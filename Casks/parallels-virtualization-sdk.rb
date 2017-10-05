cask 'parallels-virtualization-sdk' do
  version '13.1.0-43108'
  sha256 '18b63c6b9cb7f26c3c812c54d8d3a19571b13b6da3b51189a25771c14e6e2dac'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
