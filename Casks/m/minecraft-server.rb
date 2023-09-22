cask "minecraft-server" do
  version "1.20.2,5b868151bd02b41319f54c8d4061b8cae84e665c"
  sha256 "1daee4838569ad46e41f0a6f459684c500c7f2685356a40cfb7e838d6e78eae8"

  url "https://launcher.mojang.com/v#{version.major}/objects/#{version.csv.second}/server.jar",
      verified: "launcher.mojang.com/"
  name "Minecraft Server"
  desc "Run a Minecraft multiplayer server"
  homepage "https://www.minecraft.net/en-us/"

  livecheck do
    url "https://www.minecraft.net/en-us/download/server/"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/objects/(\h+)/server\.jar[^>]*>minecraft[_-]server[._-]v?(\d+(?:\.\d+)*)\.jar}i)
          .map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/minecraft-server.wrapper.sh"
  binary shimscript, target: "minecraft-server"

  config_dir = HOMEBREW_PREFIX.join("etc", "minecraft-server")

  preflight do
    FileUtils.mkdir_p config_dir

    File.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{config_dir}' && \
        exec /usr/bin/java ${@:--Xms1024M -Xmx1024M} -jar '#{staged_path}/server.jar' nogui
    EOS
  end

  eula_file = config_dir.join("eula.txt")

  postflight do
    system_command shimscript
    File.write(eula_file, File.read(eula_file).sub("eula=false", "eula=TRUE"))
  end

  uninstall_preflight do
    FileUtils.rm_f eula_file
  end

  zap trash: config_dir

  caveats do
    depends_on_java "16+"
    <<~EOS
      Configuration files are located in

        #{config_dir}
    EOS
  end
end
