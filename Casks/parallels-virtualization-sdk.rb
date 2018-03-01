cask 'parallels-virtualization-sdk' do
  version '13.3.0-43321'
  sha256 '55789180b93ced4b62f41da80392d2f3b7376a8ea0ba8f40a2ebd281ec417057'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
