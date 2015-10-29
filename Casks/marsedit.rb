cask :v1 => 'marsedit' do
  version '3.7.3'
  sha256 'b7e9d15d2b7e07442742900b11362a9d7b28d34557e530dd23282d8e8f62b6c3'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '3250869e30276202cdc41279ba3a7936114a87ed9d157c836362b0f3add9aa62'
  name 'MarsEdit'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
