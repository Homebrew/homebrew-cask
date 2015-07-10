cask :v1 => 'logitech-media-server' do
  version '7.7.5'
  sha256 '760e4347b84f040710afe3da8e40cf3aefb499003cf9372028a9e84419402305'

  # slimdevices.com is the official download host per the vendor homepage
  url "http://downloads.slimdevices.com/LogitechMediaServer_v#{version}/LogitechMediaServer-#{version}.pkg"
  name 'Logitech Media Server'
  homepage 'http://www.mysqueezebox.com/'
  license :gpl
  tags :vendor => 'Logitech'

  pkg "LogitechMediaServer-#{version}.pkg"

  uninstall :pkgutil => 'com.logitech.music.Squeezebox'

  zap :delete => '~/Library/Preferences/com.slimdevices.slim.plist'
end
