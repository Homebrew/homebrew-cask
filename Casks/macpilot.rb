cask 'macpilot' do
  version '11.0.5'
  sha256 '805d66245cce47e71a09c8eccf51b9ffa2c23b4136ebdf38477bac5c1e1e4d6c'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
