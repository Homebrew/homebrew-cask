cask "minecraft-server" do
  version "1.16.5,1b557e7b033b583cd9f66746b7a9ab1ec1673ced"
  sha256 "58f329c7d2696526f948470aa6fd0b45545039b64cb75015e64c12194b373da6"

  url "https://launcher.mojang.com/v#{version.major}/objects/#{version.after_comma}/server.jar",
      verified: "launcher.mojang.com/"
  appcast "https://minecraft.net/en-us/download/server/"
  name "Minecraft Server"
  homepage "https://minecraft.net/"

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/minecraft-server.wrapper.sh"
  binary shimscript, target: "minecraft-server"

  config_dir = HOMEBREW_PREFIX.join("etc", "minecraft-server")

  preflight do
    FileUtils.mkdir_p config_dir

    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{config_dir}' && \
        exec /usr/bin/java ${@:--Xms1024M -Xmx1024M} -jar '#{staged_path}/server.jar' nogui
    EOS
  end

  eula_file = config_dir.join("eula.txt")

  postflight do
    system_command shimscript
    IO.write(eula_file, IO.read(eula_file).sub("eula=false", "eula=TRUE"))
  end

  uninstall_preflight do
    FileUtils.rm_f eula_file
  end

  zap trash: config_dir

  caveats do
    depends_on_java
    <<~EOS
      Configuration files are located in

        #{config_dir}
    EOS
  end
end
