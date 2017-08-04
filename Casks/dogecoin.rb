cask 'dogecoin' do
  version '1.10.0'
  sha256 'be854af97efecf30ee18ed846a3bf3a780a0eb0e459a49377d7a8261c212b322'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx-signed.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom',
          checkpoint: '63cbe023b3e88e292046b782be28e702ff667cb743e592c3e2cc9824029a15ea'
  name 'Dogecoin'
  homepage 'http://dogecoin.com/'

  app 'Dogecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", '0755'
  end

  zap delete: '~/Library/com.dogecoin.Dogecoin-Qt.plist'
end
