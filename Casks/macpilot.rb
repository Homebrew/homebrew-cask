cask 'macpilot' do
  version '11.1'
  sha256 'b56201f9e726218ca1cc5e793b9069c047f644efb24581d0bc3cdd38f86729ac'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
