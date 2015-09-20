cask :v1 => 'minecraft-server' do
  version '1.8.8'
  sha256 :no_check

  url 'https://s3.amazonaws.com/Minecraft.Download/versions/1.8.8/minecraft_server.1.8.8.jar'
  name 'Minecraft Server'
  homepage 'https://minecraft.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :naked

  preflight do
    FileUtils.touch "#{staged_path}/minecraft-server"
    minecraft_server = File.open "#{staged_path}/minecraft-server", 'w'
    minecraft_server.puts '#!/bin/bash'
    minecraft_server.puts 'BASEDIR=$(dirname "$(readlink -n $0)")'
    minecraft_server.puts 'cd $BASEDIR'
    minecraft_server.puts 'java -Xmx1024M -Xms1024M -jar minecraft_server.1.8.8.jar nogui'
    minecraft_server.close
  end

  binary 'minecraft-server'

  postflight do
    set_permissions "#{staged_path}/minecraft-server", '+x'
    system 'minecraft-server'

    file_name = "#{staged_path}/EULA.txt"
    contents = File.read(file_name).gsub(/false/, 'true')
    File.open(file_name, 'w') {|file| file.puts contents }
  end

  caveats do
    puts 'To run this app, type "minecraft-server" in terminal.'
    puts 'To configure the server take a look at the files staged at /opt/homebrew-cask/Caskroom/minecraft-server'
  end
end
