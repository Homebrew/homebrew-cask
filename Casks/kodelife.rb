cask 'kodelife' do
  version '0.7.0.53'
  sha256 'eccb944d3f60034f4216a29fdf4d7010ed4d5d3d80861315f102dd9d681aa9e1'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
