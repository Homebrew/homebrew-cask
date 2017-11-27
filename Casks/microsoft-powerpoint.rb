cask 'microsoft-powerpoint' do
  version '15.40.0'
  sha256 '11511197aa91289aed70e33b3a11d0911f79e0083008461326e712c1c803ef98'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_PowerPoint_2016_15.40.17110800_Installer.pkg'
  name 'Microsoft Powerpoint 2016'
  homepage 'https://www.microsoft.com/en-us/store/d/powerpoint-2016-for-mac/cfq7ttc0k5cs?'

  app 'Microsoft Powerpoint.app'
end
