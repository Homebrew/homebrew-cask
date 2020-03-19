cask 'rcloneosx' do
  version '2.1.1'
  sha256 '1cd44df7407b811d286906c314d9c0a3c6fa38939f741389aacc1fb5727d9d5b'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
