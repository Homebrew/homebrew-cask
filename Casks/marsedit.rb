cask 'marsedit' do
  version '3.7.3'
  sha256 'b7e9d15d2b7e07442742900b11362a9d7b28d34557e530dd23282d8e8f62b6c3'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          :checkpoint => 'dbeebc057471f81ce47f00a5cb8b8dbf8ffc44f7aeabf65d16fe3083f1cdb10b'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
