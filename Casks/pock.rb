cask 'pock' do
  version '0.4.5'
  sha256 '324e273727ae373d48912b820449e679db0ce9cbc68cb0eb3c9e705daed99b67'

  url 'https://pock.pigigaldi.com/download.php?file=pock_0_4_5_eket.zip'
  appcast 'https://github.com/pigigaldi/Pock/releases'
  name 'Pock'
  homepage 'https://pock.pigigaldi.com/'

  app 'Pock.app'
end
