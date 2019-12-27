cask 'kodelife' do
  version '0.8.8.109'
  sha256 '36ae1ffc795c4a0c019e926992868cfd7daba8cf319ff9fb6241a604dfafed49'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
