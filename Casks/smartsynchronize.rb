cask 'smartsynchronize' do
  version '4.1.0'
  sha256 '207f285df704db88f7a7338dfd714ffc283c498010b03205cd6ac21eab9004bf'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          must_contain: version.chomp('.0')
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
