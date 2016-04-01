cask 'moneyguru' do
  version '2.10.0'
  sha256 '320a808619a7780097ce9f069c567c06af0f01bb6244be43e9abbbc055bd9ef3'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          checkpoint: '63190e3bfc76bf34e74d55752d7294a36ad7c87088d7eb947a93a9d3f7612584'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
