cask 'dogecoin' do
  version '1.10.0'
  sha256 'be854af97efecf30ee18ed846a3bf3a780a0eb0e459a49377d7a8261c212b322'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom',
          checkpoint: '3d22468ec5e9fe768efce8293cb1af298a6332ee4e1018768257418a64f99f0b'
  name 'Dogecoin'
  homepage 'http://dogecoin.com/'
  license :mit

  app 'Dogecoin-Qt.app'
end
