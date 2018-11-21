cask 'macpilot' do
  version '10.13'
  sha256 'aafe33934fb1a5a10c2e7e230b0bdd03865de604ba62dec599ef10920f57f578'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'http://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :sierra'

  app 'MacPilot.app'
end
