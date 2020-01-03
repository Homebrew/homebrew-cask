cask 'pixelstick' do
  version '2.16.0'
  sha256 '979182e735012cfbf4ab58f81778447da08a779187a8f8be65c13db831a332e6'

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/product/pixelstick/changelog/appcast/'
  name 'PixelStick'
  homepage 'https://plumamazing.com/product/pixelstick'

  app 'PixelStick.app'
end
