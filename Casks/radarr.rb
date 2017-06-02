cask 'radarr' do
  version '0.2.0.696'
  sha256 '47486379f64d49f5f4ef3d136285fe4ede1ec40095401aaf4bafd0d8aefec881'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: '207e425b74613b1b2ec86ffadbcb68b194a698a5ee3a5a8f9d90fc19e4a36398'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
