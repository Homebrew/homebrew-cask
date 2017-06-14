cask 'minecraft-server' do
  version '1.12'
  sha256 'feebff3834e41cc096522525707d2dd27adc2431b1f3145b9d0ccfc4c8a3dc09'

  # s3.amazonaws.com/Minecraft.Download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Minecraft.Download/versions/#{version}/minecraft_server.#{version}.jar"
  name 'Minecraft Server'
  homepage 'https://minecraft.net/'

  container type: :naked

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/minecraft-server.wrapper.sh"
  binary shimscript, target: 'minecraft-server'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      cd "$(dirname "$(readlink -n $0)")" && \
        java -Xmx1024M -Xms1024M -jar 'minecraft_server.#{version}.jar' nogui
    EOS
  end

  postflight do
    system_command 'minecraft-server'

    eula_file = "#{staged_path}/eula.txt"
    IO.write(eula_file, IO.read(eula_file).gsub('false', 'TRUE'))
  end

  caveats do
    <<-EOS.undent
      To run this app, type "#{token}" in terminal.
      To configure the server take a look at the files staged at #{staged_path}
    EOS
  end
end
