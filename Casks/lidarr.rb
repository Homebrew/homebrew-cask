cask 'lidarr' do
  version '0.4.0.524'
  sha256 '947133b1b3ed5cc6e246aac5ae69c7b3a6161aa44845a946e79d0780d7f832ca'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
