cask :v1 => 'moneyguru' do
  version '2.8.1'
  sha256 '3f2ef4c2ccbb1b363159057ecc2cf19193017d9bef5298e5aad26dbe58d82bf2'

  url "http://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'moneyGuru'
  homepage 'http://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
