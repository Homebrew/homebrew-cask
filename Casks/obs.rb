cask 'obs' do
  version '24.0.6'
  sha256 '7cb521f4eaeebf5807991d22604fd08af146728d1df7a1f4f6c38230f2f32a0d'

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  appcast 'https://github.com/obsproject/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'

  app 'OBS.app'
end
