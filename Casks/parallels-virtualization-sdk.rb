cask 'parallels-virtualization-sdk' do
  version '12.1.2-41525'
  sha256 'c9bbffb4a6cf6a719a1d122cbcbf18d52daf6a260c9142d9001b9afacd7d1266'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
