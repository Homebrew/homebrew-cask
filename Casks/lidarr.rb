cask 'lidarr' do
  version '0.6.2.883'
  sha256 '7d207b86a8bcd1d1d95e2a3df8b27305f467206f6a464083a28395f981d98b1b'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
