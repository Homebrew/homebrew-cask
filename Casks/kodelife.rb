cask "kodelife" do
  version "0.9.6.140"
  sha256 "0a07fb9b7cf884caa95e60cb8226d6858e2f0bbd83dc86a10a33bde44a41f133"

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast "https://hexler.net/pub/kodelife/appcast.xml"
  name "KodeLife"
  homepage "https://hexler.net/software/kodelife"

  auto_updates true

  app "KodeLife.app"
end
