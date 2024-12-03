cask "minecraft-server" do
  version "1.21.4,4707d00eb834b446575d89a61a11b5d548d8c001"
  sha256 "1066970b09e9c671844572291c4a871cc1ac2b85838bf7004fa0e778e10f1358"

  url "https://launcher.mojang.com/v#{version.major}/objects/#{version.csv.second}/server.jar",
      verified: "launcher.mojang.com/"
  name "Minecraft Server"
  desc "Run a Minecraft multiplayer server"
  homepage "https://www.minecraft.net/en-us/"

  livecheck do
    url "https://www.minecraft.net/en-us/download/server"
    regex(%r{href=.*?/objects/(\h+)/server\.jar[^>]*>minecraft[_-]server[._-]v?(\d+(?:\.\d+)*)\.jar}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
    FileUtils.rm(eula_file) if eula_file.exist?
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
