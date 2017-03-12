cask 'kodelife' do
  version '0.4.2'
  sha256 '60e12db0d2da09d0efac2f1c345367bb0be15dfa58a07a91f1edef87341e8683'

  url "http://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'http://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '34e61d28b9c31c6dba034cb39f05493685ce86e4d5372159d86eaf9ec2dfed5e'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
