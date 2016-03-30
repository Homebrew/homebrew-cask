cask 'logitech-media-server' do
  version '7.8.0'
  sha256 '1dfe181821c6ebef5bcc53e433cc87f0777ab22b4eab1eec157fe70c1e556523'

  # slimdevices.com is the official download host per the vendor homepage
  url "http://downloads.slimdevices.com/LogitechMediaServer_v#{version}/LogitechMediaServer-#{version}.pkg"
  name 'Logitech Media Server'
  homepage 'http://www.mysqueezebox.com/'
  license :gpl

  pkg "LogitechMediaServer-#{version}.pkg"

  uninstall pkgutil: 'com.logitech.music.Squeezebox'

  zap delete: '~/Library/Preferences/com.slimdevices.slim.plist'
end
