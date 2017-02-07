cask 'kodelife' do
  version '0.4.0'
  sha256 '5aa576d094a514cd9c519db01786fb31321133523ecd23e572412a3aa0cad2f3'

  url "http://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'http://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: 'eb7c036e4da68f4c66735e910d544f3e40921aeb6dcd51388bac65b8d2061dd4'
  name 'KodeLife'
  homepage 'http://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
