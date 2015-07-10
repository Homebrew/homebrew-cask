cask :v1 => 'logitech-media-server' do
  version '7.7.5'
  sha256 '760e4347b84f040710afe3da8e40cf3aefb499003cf9372028a9e84419402305'

  url "http://downloads.slimdevices.com/LogitechMediaServer_v#{version}/LogitechMediaServer-#{version}.pkg"
  name 'Logitech Media Server'
  homepage 'http://www.mysqueezebox.com/'
  license :gpl

  pkg "LogitechMediaServer-#{version}.pkg"
end
