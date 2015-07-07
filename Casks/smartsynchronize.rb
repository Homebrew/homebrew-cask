cask :v1 => 'smartsynchronize' do
  version '3.4.2'
  sha256 'c8dbf08e1dc6f5aa6168d8a5d407da2c3b50f4406270feb37ce00ef34a8ac4ac'

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
