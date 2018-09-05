cask 'kodelife' do
  version '0.6.3.0'
  sha256 '50c483a86ce6e8efe48db826d99a12a88f4383f22756833c8e30f5140a166b78'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
