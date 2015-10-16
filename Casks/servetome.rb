cask :v1 => 'servetome' do
  version '3.9.0.3101'
  sha256 '507987377436f80f985e3c46e1f5ffaecea933d8fbe36c23a5eb09f11c77567a'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'http://zqueue.com/servetome/stm3_mac_appcast.xml',
          :sha256 => '48cc93d336da8f71ab2a804d609e54d2e81ce4cd17f626e57aa4b7a76624ea69'
  name 'ServeToMe'
  homepage 'http://zqueue.com/servetome/'
  license :gratis

  app 'ServeToMe.app'
end
