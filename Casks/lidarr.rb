cask 'lidarr' do
  version '0.7.0.1347'
  sha256 '145acae87911e7d3fb58ba14f90a9fa8721b7ecd253696aa91b447c452830841'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
