cask 'bootchamp' do
  version '1.7'
  sha256 'a6494fbc9efd057d8f25ba3aa8122e2b037145cc78e1bba12c69401afc06d0bc'

  url 'https://kainjow.com/downloads/BootChamp.zip'
  appcast 'https://kainjow.com/updates/bootchamp.xml',
          checkpoint: '37d00975e1b9077228c98830917a373e33961f029cff1e4f9120544b1944192a'
  name 'BootChamp'
  homepage 'https://www.kainjow.com/'
  license :oss

  app 'BootChamp.app'
end
