cask 'kodelife' do
  version '0.6.5.0'
  sha256 'c242773836daaf65aa269517bc20e395e70f4d28853a7eca5880e1633fd32564'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
