cask 'macpilot' do
  version :latest
  sha256 :no_check

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  name 'MacPilot'
  homepage 'http://www.koingosw.com/products/macpilot.php'

  app 'MacPilot.app'
end
