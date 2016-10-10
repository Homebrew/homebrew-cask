cask 'keymo' do
  version '1.2.5'
  sha256 '7eb685ae806e0bcf251cf74d18890ef07d75dc31bc92323ff66efdf8b56476a0'

  url 'https://manytricks.com/download/keymo'
  appcast 'https://manytricks.com/keymo/appcast.xml',
          checkpoint: '382c704be6dbdc0bbeff5b01a661c227a9beabc487363bea91d63cf55ec0f8c7'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo'

  auto_updates true

  app 'Keymo.app'

  zap delete: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
