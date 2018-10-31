cask 'moneyguru' do
  version '2.11.0'
  sha256 '73a7a883b7a1b9a8bb882be0b987756990f2ccfcaafaba3a5531e4fe57e6c38c'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/moneyguru/'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'

  app 'moneyGuru.app'
end
