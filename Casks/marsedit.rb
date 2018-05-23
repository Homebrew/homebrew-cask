cask 'marsedit' do
  version '4.0'
  sha256 'c57808eaf0be7d9afab2144f44a1022a055429d85b948e6f39855b4aa6622e4a'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: '73ef929583532fcccd1b664c6b3ebe829e491a1d7f727c6fd480070459e2e545'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
