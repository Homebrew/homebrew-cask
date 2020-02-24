cask 'rcloneosx' do
  version '2.0.6'
  sha256 'd02c4d99a3fee9cd6411a7ae32b8131a97947ca6ab7bc1091511fb89206b9040'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
