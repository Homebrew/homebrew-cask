cask 'microsoft-word' do
  version '15.40.0'
  sha256 '0411cc2cd15dfac966bd8895624b708e089a881d1dc7d574d2e2b4db5be34049'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Word_2016_15.40.17110800_Installer.pkg'
  name 'Microsoft Word 2016'
  homepage 'https://www.microsoft.com/en-us/store/d/word-2016-for-mac/cfq7ttc0k5d6?'

  app 'Microsoft Word.app'
end
