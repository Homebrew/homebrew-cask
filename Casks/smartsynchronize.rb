cask 'smartsynchronize' do
  version '3.5.0'
  sha256 'b590f3ff92bc3f2474ed3356029a2b63903a2badfa0a8b362d1bf38cec943dee'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
