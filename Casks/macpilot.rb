cask 'macpilot' do
  version '11.0.7'
  sha256 '8613bce8071f7dd4569b27f0dde44fa06a0e202eb803ab1c872b3518d5b8ae6c'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
