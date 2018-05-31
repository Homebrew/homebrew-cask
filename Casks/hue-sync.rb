cask 'hue-sync' do
  version '1.0.0.3'
  sha256 '8ca61ab7fb9b40543953a4ffdf4189a1b46c4c0cdee8f6fae0bc3c2daef4a989'

  # download.flexnetoperations.com/439214/1548/777/12854777/HueSyncInstaller_ was verified as official when first introduced to the cask
  url "https://download.flexnetoperations.com/439214/1548/777/12854777/HueSyncInstaller_#{version}.pkg?ftpRequestID=6139591797&server=download.flexnetoperations.com&dtm=DTM20180531135212NzY0MDY4MzIw&authparam=1527799932_feed85b5cb029ebc4b5b2f905152dfa2&ext=.pkg"
  name 'Hue Sync'
  homepage 'https://www2.meethue.com/en-us/entertainment/hue-sync'

  pkg "HueSyncInstaller_#{version}.pkg"

  uninstall pkgutil: 'com.lighting.huesync'

  zap trash: [
               '~/Library/Application Support/ccom.lighting.huesync/',
               '~/Library/Caches/HueSync',
               '~/Library/Preferences/com.lightning.huesync.plist',
             ]
end
