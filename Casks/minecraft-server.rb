cask 'minecraft-server' do
  version '1.13.1,fe123682e9cb30031eae351764f653500b7396c9'
  sha256 '2ea6047e7651c429228340acd7d1e35f4f6c7af42f59f92b0b1cd476561253d1'

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
        exec /usr/bin/java -Xmx1024M -Xms1024M -jar '#{staged_path}/server.jar' nogui
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
