cask 'smartsynchronize' do
  version '4.0.2'
  sha256 'fb70ff968867c76f69b77932cc80d734400489a4f37de852bcc8bf34ceead520'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartsynchronize/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
