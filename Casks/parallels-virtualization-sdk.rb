cask 'parallels-virtualization-sdk' do
  version '13.3.1-43365'
  sha256 '110e4476701179cb8640f0399b813cb22c8c987110f13621cf4e4f5b924dec38'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
