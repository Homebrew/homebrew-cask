cask 'kodelife' do
  version '0.5.3.1'
  sha256 '78c2f741cb21d1c6d69e673f51422dbdcbf96bb591e6b0a546c8a6d288450ef1'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '70f544743019d596b3f9f2a0bd0c2f36edb947029375c5b443350d06bf708902'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
