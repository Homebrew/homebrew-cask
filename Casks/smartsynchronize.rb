cask 'smartsynchronize' do
  version '4.0.1'
  sha256 'd952c4b96c7c87a700bf837f7ef0a9f959bb8a4d6e1454a861647bf0aff98da2'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          configuration: version.major_minor
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
