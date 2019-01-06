cask 'lidarr' do
  version '0.5.0.583'
  sha256 'fad6fdf70bf95f002e09533d3c7b821bd55111d2ee60c597bcb63002a072c422'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
