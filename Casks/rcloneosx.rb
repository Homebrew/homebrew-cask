cask 'rcloneosx' do
  version '1.6.3'
  sha256 '7dd1cf203382a7d4cd71dd18495410aa58ddfcff478884e5cdadd9eb807b60ef'

  # github.com/rsyncOSX/rcloneosx was verified as official when first introduced to the cask
  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
