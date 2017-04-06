cask 'hype' do
  version '3.6.2'
  sha256 'aead4f966710b94d345dec797c5dd3903c0e2f12e7e6599493aaa063f165a7f5'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: 'b04e4fed97ef930ccdd3c77a983799d0277932d0b6a847e1ffef7b311b206865'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  app "Hype #{version.major}.app"
end
