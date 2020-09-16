cask "kodelife" do
  version "0.9.5.138"
  sha256 "ce7820a85db2e8d37cec89f8c5940a9afc8b7747be40ec9f9c8a8331f609a8da"

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast "https://hexler.net/pub/kodelife/appcast.xml"
  name "KodeLife"
  homepage "https://hexler.net/software/kodelife"

  auto_updates true

  app "KodeLife.app"
end
