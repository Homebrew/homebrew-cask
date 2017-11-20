cask 'soundplant' do
  version '45'
  sha256 'b38d0b6396b259196d16b916a9faf2b46ebffd6f2d32f088079cb050393e9285'

  url "http://soundplant.org/downloads/Soundplant#{version}.dmg"
  name 'Soundplant'
  homepage 'https://soundplant.org/'

  app "Soundplant #{version}.app"

  zap trash: [
               '~/Library/Application Support/Soundplant',
               '~/Library/Preferences/com.marcelblum.soundplant.plist',
               '~/Library/Saved Application State/com.marcelblum.soundplant.savedState',
             ]
end
