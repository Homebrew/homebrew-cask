cask 'parallels-virtualization-sdk' do
  version '11.1.3-32521'
  sha256 'f6fda8d04dc14a0576762642195a6653384fb8718dbb1f313302c53b9169eb32'

  url "https://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
