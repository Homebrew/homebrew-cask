cask 'pixelstick' do
  version '2.10'
  sha256 '6fb1daa43db60aadc13a2ff87432b8e975275beaa7ce1a92fb854d350357479f'

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100',
          checkpoint: 'ea2e367eed6d4d03f81d99dd3a341ba5b6e1019ad69baa902419cca4af7bb226'
  name 'PixelStick'
  homepage 'https://plumamazing.com/mac/pixelstick'

  app 'PixelStick.app'
end
