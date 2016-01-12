cask 'moneyguru' do
  version '2.9.4'
  sha256 'df9e113239f230d195f93aa51ad081f3aaea4c86df515b18a3eb1c67d66e9530'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          :sha256 => 'e80d6ed5f87a6be27ff0cd816cff1d381610896b1da3ce5879e2044c30b6ab95'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
