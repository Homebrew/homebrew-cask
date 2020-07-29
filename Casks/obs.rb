cask 'obs' do
  version '25.0.8'
  sha256 '5674f446c22e34ea2696386a4d04aa201ac692c8217f610ee3c1d002e371d11f'

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
