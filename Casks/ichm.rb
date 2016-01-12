cask 'ichm' do
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  url "https://ichm.googlecode.com/files/iChm.#{version}.zip"
  appcast 'http://www.robinlu.com/ichm/release.xml',
          :sha256 => 'e1c0ae9b7eea0a6f30f4fc57b83c0c553a2f0e3bc97e761b48ed7aa566214e11'
  name 'iChm'
  homepage 'https://code.google.com/p/ichm/'
  license :oss

  app 'iChm.app'
end
