cask 'kodelife' do
  version '0.6.4.0'
  sha256 '164635644fe84f95f02d3ac9c250b6ec64b640c74c87394c6041381bc75534cd'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
