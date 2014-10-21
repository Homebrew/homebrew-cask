class Smartsynchronize < Cask
  version '3.3.5'
  sha256 '20887eeaa32e80836161e7be96f74627385f78fa958826368e4d550f3530eb8d'

  url "http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app 'SmartSynchronize 3.3.app'
  binary 'SmartSynchronize 3.3.app/Contents/MacOS/SmartSynchronize'

  postflight do
    system '/bin/rm', '-Rf', "#{destination_path}/SmartSynchronize 3.3.app/Contents/Resources/Plugins/JRE"
  end

  caveats do
    files_in_usr_local
    puts 'This app requires the JRE (Java Runtime Environment) to be installed'
  end
end
