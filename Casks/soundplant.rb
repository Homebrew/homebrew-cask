cask 'soundplant' do
  version '45'
  sha256 '2e7ed3a944f6b988e059272e4ea17d9e2453732e90692f03b3f7507ee64b0190'

  url "https://soundplant.org/downloads/Soundplant#{version}.dmg"
  name 'Soundplant'
  homepage 'https://soundplant.org/'

  app "Soundplant #{version}.app"

  zap trash: [
               '~/Library/Application Support/Soundplant',
               '~/Library/Preferences/com.marcelblum.soundplant.plist',
               '~/Library/Saved Application State/com.marcelblum.soundplant.savedState',
             ]
end
