cask 'kodelife' do
  version '0.8.8.110'
  sha256 'd3f26d60923f824f0bf29d53038f503847affe9dd0cc0041888ef30936fc15a4'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
