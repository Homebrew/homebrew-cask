cask 'minecraft-server' do
  version '1.10.2'
  sha256 '195f468227c5f9218f3919538b9b16ba34adced67fc7d7b652c508a5e8d07a21'

  # s3.amazonaws.com/Minecraft.Download was verified as official when first introduced to the cask
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
    minecraft_server.puts "java -Xmx1024M -Xms1024M -jar minecraft_server.#{version}.jar nogui"
    minecraft_server.close
  end

  postflight do
    set_permissions "#{staged_path}/minecraft-server", '+x'
    system 'minecraft-server'

    eula_file = "#{staged_path}/eula.txt"
    IO.write(eula_file, File.read(eula_file).gsub('false', 'TRUE'))
  end

  caveats do
    <<-EOS.undent
      To run this app, type "#{token}" in terminal.
      To configure the server take a look at the files staged at #{staged_path}
    EOS
  end
end
