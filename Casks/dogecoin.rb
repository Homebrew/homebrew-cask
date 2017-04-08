cask 'dogecoin' do
  version '1.10.0'
  sha256 'be854af97efecf30ee18ed846a3bf3a780a0eb0e459a49377d7a8261c212b322'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom',
          checkpoint: 'a95e91189854b31e03a68bb01da0b3db37575cb92f47f8dc69e0c1d87cfc8396'
  name 'Dogecoin'
  homepage 'http://dogecoin.com/'

  app 'Dogecoin-Qt.app'
end
