cask 'minecraft-server' do
  version '1.14.0,f1a0073671057f01aa843443fef34330281333ce'
  sha256 '671e3d334dd601c520bf1aeb96e49038145172bef16bc6c418e969fd8bf8ff6c'

  # launcher.mojang.com was verified as official when first introduced to the cask
  url "https://launcher.mojang.com/v#{version.major}/objects/#{version.after_comma}/server.jar"
  appcast 'https://minecraft.net/en-us/download/server/'
  name 'Minecraft Server'
  homepage 'https://minecraft.net/'

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/minecraft-server.wrapper.sh"
  binary shimscript, target: 'minecraft-server'

  config_dir = HOMEBREW_PREFIX.join('etc', 'minecraft-server')

  preflight do
    FileUtils.mkdir_p config_dir

    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{config_dir}' && \
        exec /usr/bin/java ${@:--Xms1024M -Xmx1024M} -jar '#{staged_path}/server.jar' nogui
    EOS
  end

  eula_file = config_dir.join('eula.txt')

  postflight do
    system_command shimscript
    IO.write(eula_file, IO.read(eula_file).sub('eula=false', 'eula=TRUE'))
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
