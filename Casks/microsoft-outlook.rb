cask 'microsoft-outlook' do
  version '15.40.0'
  sha256 '395eb6732a12162f28d41d89ce6bfad14980f18a3c1d7b011ea56a05734ea9dd'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Outlook_2016_15.40.17110800_Installer.pkg'
  name 'Microsoft Outlook 2016'
  homepage 'https://www.microsoft.com/en-us/store/d/outlook-2016-for-mac/cfq7ttc0k5cd?'

  app 'Microsoft Outlook.app'
end
