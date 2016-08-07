cask 'marsedit' do
  version '3.7.7'
  sha256 'babe064e3e7871895fbcf5f163047782965fa7c1ac6d855988090994e6d08049'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: 'a468f6791921e3e4c9d94c9c85a5ad552d11c0b9066e412f35053acbd4fc89ca'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
