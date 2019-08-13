cask 'smartsynchronize' do
  version '4.0.1'
  sha256 'd50ed71bd85d32409853a3a2e73006b03d977feea9b7875c71da689491e36b82'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          configuration: version.chomp(".0")
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
