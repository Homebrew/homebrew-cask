cask :v1 => 'au-wifi-connect' do
  version :latest
  sha256 :no_check
  url 'https://service.wi2.ne.jp/sw/auwifi/autoLogin/MacOSX/auWifiConnectForMac.dmg.gz'
  homepage 'http://www.au.kddi.com/mobile/service/smartphone/wifi/wifi-spot/usage/mac/'
  license :unknown
  container :nested => 'au-wifi-connect-latest'
  app 'au Wi-Fi接続ツール.app'
end
