cask 'hue-sync' do
  version '1.3.3.1'
  sha256 '0de1f39185602ec36e904d8c695772fa50977cea6de628a1feb3f8bcd449c291'

  # URL_SECTION was verified as official when first introduced to the cask
  url "https://flex1548-esd.flexnetoperations.com/flexnet/operations/WebContent?fileID=HueSyncMac"
  name 'Hue Sync desktop app'
  homepage 'https://www2.meethue.com/en-us/entertainment/sync-with-pc'

  pkg "HueSyncInstaller_#{version}.pkg"
  uninstall pkgutil: 'com.lighting.huesync'

end
