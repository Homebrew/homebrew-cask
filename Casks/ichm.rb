cask 'ichm' do
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  url "https://ichm.googlecode.com/files/iChm.#{version}.zip"
  appcast 'http://www.robinlu.com/ichm/release.xml',
          :checkpoint => '5f0a7cb734628ddd4301a2f1e82ba6787a4a42bc4cc0db7f945622fc3c37321a'
  name 'iChm'
  homepage 'https://code.google.com/p/ichm/'
  license :oss

  app 'iChm.app'
end
