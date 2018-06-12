cask 'marsedit' do
  version '4.1'
  sha256 '1c5ad80b6a7cf0702de461b74023b28f09ff1b25be03f1e4d1bc6eb99547b6b1'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
