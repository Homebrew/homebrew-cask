cask 'smartsynchronize' do
  version '3.4.9'
  sha256 '1594199d9fdc408eea5ae0c74aff48902e8b0b83fb4d9e57148f040c0c128e23'

  url "https://www.syntevo.com/static/smart/download/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
