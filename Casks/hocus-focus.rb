cask :v1 => 'hocus-focus' do
  version :latest
  sha256 :no_check

  url 'http://hocusfoc.us/static/releases/latest.zip'
  name 'Hocus Focus'
  appcast 'http://hocusfoc.us/updates.xml',
          :sha256 => '84d4431c23176a9ed9b6c2dadb31e465dd67a38a4ed4263997056e332a91b4ec'
  homepage 'http://hocusfoc.us/'
  license :gratis
  app 'Hocus Focus.app'
  zap :delete => [
                  '~/Library/Caches/com.uglyapps.HocusFocus',
                  '~/Library/Application Support/com.uglyapps.HocusFocus',
                  '~/Library/Preferences/com.uglyapps.HocusFocus.plist',
                 ]
end
