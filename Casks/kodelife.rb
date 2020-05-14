cask 'kodelife' do
  version '0.9.1.132'
  sha256 'a4782eeefc7c4a91d81fc36925ee4465dea471eeaa53feae934480bacf40d92d'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
