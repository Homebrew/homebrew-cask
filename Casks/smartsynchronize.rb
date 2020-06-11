cask 'smartsynchronize' do
  version '4.0.3'
  sha256 '6245fb232382c22ddf56d8b7b6d6f604b56d467b5fbd7d73f101bfef290e516b'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          must_contain: version.chomp('.0')
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
