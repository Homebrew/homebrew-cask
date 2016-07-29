cask 'ichm' do
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  # ichm.googlecode.com was verified as official when first introduced to the cask
  url "https://ichm.googlecode.com/files/iChm.#{version}.zip"
  name 'iChm'
  homepage 'http://www.robinlu.com/ichm'
  license :oss

  app 'iChm.app'
end
