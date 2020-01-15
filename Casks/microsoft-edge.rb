cask 'microsoft-edge' do
  version '79.0.309.65'
  sha256 '67b1e8e036c575782b1c9188dd48fa94d9eabcb81947c8632fd4acac7b01644b'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDGE01-chk.xml',
          configuration: "#{version.major}.#{version.patch}"
  name 'Microsoft Edge'
  homepage 'https://www.microsoftedge.com/'

  auto_updates true

  pkg "MicrosoftEdge-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.edgemac'

end
