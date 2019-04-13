cask 'lidarr' do
  version '0.6.0.815'
  sha256 '5dcb950ce62ccf3e831e90995714dbc48e8a49c0d9f93953c51d146bc56d91f4'

  # github.com/lidarr/Lidarr was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/lidarr/Lidarr/releases.atom'
  name 'Lidarr'
  homepage 'https://lidarr.audio/'

  app 'Lidarr.app'
end
