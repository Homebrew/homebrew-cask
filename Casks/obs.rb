cask 'obs' do
  version '25.0.6'
  sha256 '6c515e7b816993758c94058ea33c1d95a27ce73b210ed8be6e8a710e220770ea'

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
