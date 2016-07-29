cask 'smartsynchronize' do
  version '3.4.3'
  sha256 'd0542f16dd665044bc2de8f1cc9316419a2590fd883a7886ee44d7ecae10930e'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'
  license :commercial

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"

  caveats do
    files_in_usr_local
  end
end
