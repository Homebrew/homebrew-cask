cask 'rcloneosx' do
  version '2.0.5'
  sha256 'ddb7b39030e58f2131c1785c1127d8fc65f0cec0d756ce398a228d11820cdf27'

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/RcloneOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/rcloneosx/releases.atom'
  name 'RcloneOSX'
  homepage 'https://github.com/rsyncOSX/rcloneosx'

  depends_on formula: 'rclone'

  app 'RcloneOSX.app'
end
