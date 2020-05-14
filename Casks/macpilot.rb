cask 'macpilot' do
  version '11.1.3'
  sha256 '1990b04414896ef24767e58cd9b56901460375ee8fb805572ca34da019bcda58'

  url 'https://www.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
