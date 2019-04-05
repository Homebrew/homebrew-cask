cask 'soundplant' do
  version '47.1.2'
  sha256 '802c8fdc66d7c8891a65ea244cc77bb00584e59b0a875d58c780cd99789cfa75'

  url "https://soundplant.org/downloads/Soundplant#{version.major}.dmg"
  appcast 'https://soundplant.org/download.htm'
  name 'Soundplant'
  homepage 'https://soundplant.org/'

  app "Soundplant #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Soundplant',
               '~/Library/Preferences/com.marcelblum.soundplant.plist',
               '~/Library/Saved Application State/com.marcelblum.soundplant.savedState',
             ]
end
