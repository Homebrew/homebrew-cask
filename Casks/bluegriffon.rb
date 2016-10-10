cask 'bluegriffon' do
  version '2.1.1'
  sha256 'e2a44b453a1919243056615a3e7bdc9f8240f9681b7c071ffb33bf7f8a62f560'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac.dmg"
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org'

  app 'BlueGriffon.app'
end
