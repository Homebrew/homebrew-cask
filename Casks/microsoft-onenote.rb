cask 'microsoft-onenote' do
  version '15.40'
  sha256 'c477ce70bfa7591e0c7ea84f7f369344c95628969948ff081847814b708b686e'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_OneNote_15.40.17110800_Updater.pkg'
  name 'Microsoft OneNote 2016'
  homepage 'https://www.onenote.com/download'

  app 'Microsoft OneNote.app'
end
