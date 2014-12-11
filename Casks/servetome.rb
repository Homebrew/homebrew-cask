cask :v1 => 'servetome' do
  version '3.9.0.3053'
  sha256 '87bf1184b7656a96088b25880e7e1c772f30d8dfa1e602f9b43ccbdd0608fdf2'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'http://zqueue.com/servetome/stm3_mac_appcast.xml',
          :sha256 => '48cc93d336da8f71ab2a804d609e54d2e81ce4cd17f626e57aa4b7a76624ea69'
  homepage 'http://zqueue.com/servetome/'
  license :unknown    # todo: improve this machine-generated value

  app 'ServeToMe.app'
end
