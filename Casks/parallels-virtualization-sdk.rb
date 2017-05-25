cask 'parallels-virtualization-sdk' do
  version '12.2.0-41591'
  sha256 '7294fb05e5750025acecde57fb516170c266bb437a42cfea626f79b2bbb8bfd1'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
