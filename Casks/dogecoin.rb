cask 'dogecoin' do
  version '1.10.0'
  sha256 'be854af97efecf30ee18ed846a3bf3a780a0eb0e459a49377d7a8261c212b322'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom'
  name 'Dogecoin'
  homepage 'https://dogecoin.com/'

  app 'Dogecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", '0755'
  end

  zap trash: '~/Library/com.dogecoin.Dogecoin-Qt.plist'
end
