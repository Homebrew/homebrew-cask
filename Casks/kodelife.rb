cask 'kodelife' do
  version '0.4.1'
  sha256 'cd75661db4496b160109589ab05a83c6808c4d810778c573584f70f24229c429'

  url "http://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'http://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '72aaf0fc5ec5c8f865026db8a44ad6f574a6a5444986c64375a9bb95d3961853'
  name 'KodeLife'
  homepage 'http://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
