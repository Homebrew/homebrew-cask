cask 'kodelife' do
  version '0.7.0.53'
  sha256 '8a9a6c35b567b5deea1a614b660f307d957ec8b06d1af1c1177050c5d011c772'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
