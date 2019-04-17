cask 'lidarr' do
  version '0.6.1.830'
  sha256 '11c63eacedd9e3d2894dfe64bb09063c423ab1b01eabeffda817470dd8980c72'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
