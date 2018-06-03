cask 'lidarr' do
  version '0.3.0.430'
  sha256 'e7990d43cb1b2efec926b178a277fb4d954e1a50bdbec5dcbd16f32466d99905'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom',
          checkpoint: '33a70363b276f35d4500cfc1287fbfd02ae8b75efa94c0fd8779e40be34aadf3'
  name 'Lidarr'
  homepage 'http://lidarr.audio/'

  app 'Lidarr.app'
end
