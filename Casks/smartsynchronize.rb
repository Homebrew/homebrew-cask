cask 'smartsynchronize' do
  version '3.4.12'
  sha256 'af7f4fe7491edaa65218cf08e94485e7bb9e8135ddbf9769e8a3e7e2ab76a122'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
