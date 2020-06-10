cask 'rcloneosx' do
  version '2.2.0'
  sha256 '405adaf55c0e22cc3942cab7ba88fe44a5937f4ec3d1cc517281de92687fb679'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/rcloneosx.#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
