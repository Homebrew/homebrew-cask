cask 'rcloneosx' do
  version '1.6.8'
  sha256 '5b0a0ef39e3b1a5ca858b075548f5bb8cdefd6831717e0a408a28bfc4225f590'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
