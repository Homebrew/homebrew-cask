cask 'parallels-virtualization-sdk' do
  version '13.1.1-43120'
  sha256 '22d69e191be8611ab1dcaf9cb4a660301e855eec05abb7d7ae906b2f96c0c774'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
