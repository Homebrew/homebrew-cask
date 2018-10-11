cask 'kodelife' do
  version '0.6.4.1'
  sha256 '484e8e56857cb0cd27392109c7e442a8e0ab6a9595f69c21c22975c8e5894fd8'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
