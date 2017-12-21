cask 'dogecoin' do
  version '1.10.0'
  sha256 'be854af97efecf30ee18ed846a3bf3a780a0eb0e459a49377d7a8261c212b322'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom',
          checkpoint: 'eab1f4542f5be4503f83da60605acf5e80bbf5f71e734185984a08150ecb6270'
  name 'Dogecoin'
  homepage 'http://dogecoin.com/'

  app 'Dogecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", '0755'
  end

  zap trash: '~/Library/com.dogecoin.Dogecoin-Qt.plist'
end
