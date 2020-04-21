cask 'rcloneosx' do
  version '2.1.5'
  sha256 'be9e0baeb95f20e3ad1fc69ec2f33eca9bdbcd930744bab9082354a9bbb3bb94'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
