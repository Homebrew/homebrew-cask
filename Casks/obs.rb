cask 'obs' do
  version '25.0.7'
  sha256 '5626ada067653edab3b76e314d2522fc9cdc0a8f44fb98a9b4a2b10ae3f9fdf2'

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  appcast 'https://github.com/obsproject/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'

  app 'OBS.app'

  zap trash: [
               '~/Library/Application Support/obs-studio',
               '~/Library/Preferences/com.obsproject.obs-studio.plist',
               '~/Library/Saved Application State/com.obsproject.obs-studio.savedState',
             ]
end
