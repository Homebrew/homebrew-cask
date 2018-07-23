cask 'lidarr' do
  version '0.3.1.471'
  sha256 '475071405fb0bb96a4fd098d6f02fa2709497d0a15135ece42be4c84aa967013'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'http://lidarr.audio/'

  app 'Lidarr.app'
end
