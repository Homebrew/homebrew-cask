cask 'rcloneosx' do
  version '1.9.0'
  sha256 'bf1bf2676872ceeba7652176eb7ab6e16eb93b11e224889b939a3fa552b27083'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
