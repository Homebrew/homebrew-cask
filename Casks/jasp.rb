cask 'jasp' do
  version '0.9.2.0'
  sha256 'c9df6eb46d37b1996b424051e677a2329953adb92449e667f45b5dbfc506c309'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end
