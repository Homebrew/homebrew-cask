cask 'kodelife' do
  version '0.5.2.0'
  sha256 '2ea60e0da71bec3e6633a3235847221d3ff014ef31a93b846cc9dc143bf63fc6'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '9346742e456ba6e8de55b4aa9abea56fd8b4922a6a9b09b5945801c78c76bcb5'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
