cask 'smartsynchronize' do
  version '3.4.3'
  sha256 'd0542f16dd665044bc2de8f1cc9316419a2590fd883a7886ee44d7ecae10930e'

  url "http://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.gsub('.','_')}.dmg"
  name 'SmartSynchronize'
  homepage 'http://www.syntevo.com/smartsynchronize/'
  license :commercial

  app 'SmartSynchronize.app'
  binary 'SmartSynchronize.app/Contents/MacOS/SmartSynchronize'

  depends_on :macos => '>= :lion'

  caveats do
    files_in_usr_local
  end
end
