cask 'kodelife' do
  version '0.9.4.137'
  sha256 '54ec210f5039bdc70029f3ee2216c4f2d352890c6d177ac39df4e6616235b7af'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
