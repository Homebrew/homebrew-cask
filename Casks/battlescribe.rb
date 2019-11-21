cask 'battlescribe' do
  version '2.03.08'
  sha256 '8f13c73da3a532a441ee0e78d74245816b5a18d5292cb14722cfe66e769464c6'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
