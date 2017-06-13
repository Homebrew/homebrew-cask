cask 'kodelife' do
  version '0.4.2.2'
  sha256 '3c5240fb03d092767a1ce2364f46d763c0619416f85e5e9bc4a8b5fc995ad9b9'

  url "http://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'http://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '69fc16feb2a20a22e68c075b15f35d2cb4e3e021266244e6ee31a888393ba6c2'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
