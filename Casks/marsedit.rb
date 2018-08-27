cask 'marsedit' do
  version '4.1.3'
  sha256 '9754c22c89bf01fc6cd297f30b80f668a0dd8d6da23c7406973b53ec8201394f'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
