cask 'smartsynchronize' do
  version '4.0.0,3086'
  sha256 '0a88efcebd9e969fb1a72b04b483d89253a0eb6b8548c2f4e9aec1be0168e793'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.before_comma}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          configuration: version.major_minor
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
