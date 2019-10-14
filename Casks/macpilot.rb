cask 'macpilot' do
  version '11.0.3'
  sha256 '6acabff3dc9eddebd4043bdc41c495d7f621233349a40660a127d69cf1676a07'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
