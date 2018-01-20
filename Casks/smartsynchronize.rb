cask 'smartsynchronize' do
  version '3.4.11'
  sha256 'eaac4a76fc9e34bf87a58ad6b47754cd7ae34f799cf62ede57547f5c4def45f7'

  url "https://www.syntevo.com/static/smart/download/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
