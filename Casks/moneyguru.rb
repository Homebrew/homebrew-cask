cask 'moneyguru' do
  version '2.9.4'
  sha256 'df9e113239f230d195f93aa51ad081f3aaea4c86df515b18a3eb1c67d66e9530'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          :sha256 => '3ff1173f8c5384118a3886952937ff8c21b9779c0a7cf592c985851a1e74c130'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
