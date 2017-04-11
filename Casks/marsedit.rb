cask 'marsedit' do
  version '3.7.11'
  sha256 '710a087cece026eb34c61031151950d321f8442356b66a7ef85872462347311e'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: '73ef929583532fcccd1b664c6b3ebe829e491a1d7f727c6fd480070459e2e545'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
