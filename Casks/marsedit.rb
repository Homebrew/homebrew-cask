cask 'marsedit' do
  version '3.7.3'
  sha256 'b7e9d15d2b7e07442742900b11362a9d7b28d34557e530dd23282d8e8f62b6c3'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          checkpoint: '88655ad7217f475f66c2dd1c205b5773bd3a04cffc90dde703e37ac5673e6782'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
