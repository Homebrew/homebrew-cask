cask 'minecraft-server' do
  version '1.8.9'
  sha256 'c18e4245073aaff580eb7359902f0251436568b1647a9e443a924cdb73fa8312'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/Minecraft.Download/versions/#{version}/minecraft_server.#{version}.jar"
  name 'Minecraft Server'
  homepage 'https://minecraft.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container type: :naked

  binary 'minecraft-server'

  preflight do
    # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
    FileUtils.touch "#{staged_path}/minecraft-server"
    minecraft_server = File.open "#{staged_path}/minecraft-server", 'w'
    minecraft_server.puts '#!/bin/bash'
    minecraft_server.puts 'BASEDIR=$(dirname "$(readlink -n $0)")'
    minecraft_server.puts 'cd $BASEDIR'
    minecraft_server.puts 'java -Xmx1024M -Xms1024M -jar minecraft_server.1.8.9.jar nogui'
    minecraft_server.close
  end

  postflight do
    set_permissions "#{staged_path}/minecraft-server", '+x'
    system 'minecraft-server'

    file_name = "#{staged_path}/EULA.txt"
    contents = File.read(file_name).gsub(%r{false}, 'true')
    File.open(file_name, 'w') { |file| file.puts contents }
  end

  caveats do
    <<-EOS.undent
      To run this app, type "#{token}" in terminal.
      To configure the server take a look at the files staged at #{staged_path}
    EOS
  end
end
