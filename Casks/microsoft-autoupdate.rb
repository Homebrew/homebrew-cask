cask 'microsoft-autoupdate' do
  version '3.11'
  sha256 '80864b3fa081335ea839388f9b02d3c515f55ace1520cdfa652c8f316708ced4'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_AutoUpdate_3.11.17101000_Updater.pkg'
  name 'Microsoft AutoUpdate'
  homepage 'https://support.office.com/en-us/article/Check-for-Office-for-Mac-updates-automatically-bfd1e497-c24d-4754-92ab-910a4074d7c1'

  app 'Microsoft AutoUpdate.app'
end
