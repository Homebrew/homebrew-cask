cask :v1 => 'ichm' do
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  url "https://ichm.googlecode.com/files/iChm.#{version}.zip"
  appcast 'http://www.robinlu.com/ichm/release.xml',
          :sha256 => '57f3dcb6b02b8934d1eb63112843567946526920e34f2fd3869df9da8c78e6ac'
  homepage 'https://code.google.com/p/ichm/'
  license :oss

  app 'iChm.app'
end
