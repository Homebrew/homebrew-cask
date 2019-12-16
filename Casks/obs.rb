cask 'obs' do
  version '24.0.5'
  sha256 'bcdfe23ac20ab760456ec74c44f123cf633233cbbf07675e6a16d6a1ddcc9ce1'

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  appcast 'https://github.com/obsproject/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'

  app 'OBS.app'
end
