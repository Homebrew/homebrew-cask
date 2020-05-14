cask 'rcloneosx' do
  version '2.1.9'
  sha256 'c2a99eb930a31136251b16d3f4b5f22aea963a88996f3eb3ca6d3d0cde9d8ea1'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/rcloneosx.#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
