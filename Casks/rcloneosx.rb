cask 'rcloneosx' do
  version '1.9.4'
  sha256 '165f2d15ff689e2df2a62b35ec2ef38ad7807de243f199487d5e56d8e7111db0'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
