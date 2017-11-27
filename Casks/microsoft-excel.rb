cask 'microsoft-excel' do
  version '15.40.0'
  sha256 'f5ff1153cc71fab0d61bd2b4a67546030f94cbec09f8944d10bba9b783b7c00d'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Excel_2016_15.40.17110800_Installer.pkg'
  name 'Microsoft Excel 2016'
  homepage 'https://www.microsoft.com/en-us/store/d/excel-2016-for-mac/cfq7ttc0k5f2?'

  app 'Microsoft Excel.app'
end
