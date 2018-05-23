cask 'lidarr' do
  version '0.2.0.371'
  sha256 'bf75e65df3c03f62905b8c6bbfee0eb3b7d38d3f22183c6a3690825190abd84c'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom',
          checkpoint: '264cd631035ca81145519da0bd44d79732f7a241361540c083499fbb7c0e40ee'
  name 'Lidarr'
  homepage 'http://lidarr.audio/'

  app 'Lidarr.app'
end
