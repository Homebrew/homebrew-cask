cask :v1 => 'macpilot' do
  version :latest
  sha256 :no_check

  url 'http://www.koingo.com/downloads/macintosh/mac_pilot.dmg'
  homepage 'http://www.koingosw.com/products/macpilot.php'
  license :unknown    # todo: improve this machine-generated value

  app 'MacPilot.app'
end
