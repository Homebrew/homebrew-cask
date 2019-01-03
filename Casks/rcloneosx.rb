cask 'rcloneosx' do
  version '1.7.0'
  sha256 '2b7ee2690300c294c599b62ed656c0b2d99d1b397cc87fc100c066817d1e2063'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
