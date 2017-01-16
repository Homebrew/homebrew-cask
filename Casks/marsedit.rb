cask 'marsedit' do
  version '3.7.9'
  sha256 '8fbefeed3a2b4f74ab839c31ecf5f187f391158d810ccc34b5e4f393223f2d1a'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: '28983ff3b79bb23903f6b1eb6aeb0543e544951e17ba8900f282a8a3dfa57466'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
