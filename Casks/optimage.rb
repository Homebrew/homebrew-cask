cask 'optimage' do
  version '1.1.3'
  sha256 '50dc4b22cee21f45fc1f4536b14cf2f41def3c7fe424913ebcc81c074cc89368'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml',
          checkpoint: '73dabe90206df0d6e7b4fbc03df7eb9ef3e67d0b41eec13a9d843f0b2cdc8da5'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
