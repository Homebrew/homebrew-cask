cask 'rcloneosx' do
  version '1.7.1'
  sha256 '794bdc0fde2faa8aab3636a71b6fde9e9eba88d4f9d18ec682bc601e86802cd8'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
