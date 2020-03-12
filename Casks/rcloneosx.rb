cask 'rcloneosx' do
  version '2.1.0'
  sha256 '7e18ea780b7c6593617c6b7cbd6e8d06dda9158493e0a8c8ccda60470c310fa9'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
