cask 'rcloneosx' do
  version '1.8.1'
  sha256 'f0792030aee807cf274a0a757176a407cfcf5d13619a71528dda868e3ff1a6d2'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
