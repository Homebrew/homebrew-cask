cask 'rcloneosx' do
  version '1.7.5'
  sha256 '6f39343cf1ce4328daa3b52ffa298bb2c1ec0e6b43c1fdb8f6b3a494e8deea56'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
