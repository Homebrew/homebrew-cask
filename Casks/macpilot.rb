cask 'macpilot' do
  version :latest
  sha256 :no_check

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'http://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  app 'MacPilot.app'
end
