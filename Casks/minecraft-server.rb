cask 'minecraft-server' do
  version '1.12.2'
  sha256 'fe1f9274e6dad9191bf6e6e8e36ee6ebc737f373603df0946aafcded0d53167e'

  # s3.amazonaws.com/Minecraft.Download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Minecraft.Download/versions/#{version}/minecraft_server.#{version}.jar"
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
        exec /usr/bin/java -Xmx1024M -Xms1024M -jar '#{staged_path}/minecraft_server.#{version}.jar' nogui
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
