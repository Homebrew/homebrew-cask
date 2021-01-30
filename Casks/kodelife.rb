cask "kodelife" do
  version "0.9.8,143"
  sha256 "f2007f3fea07903d52e7e60fbb4999052269f19b4f9d39af92f76b53ac90e2bf"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.before_comma}.#{version.after_comma}-macos.zip"
  name "KodeLife"
  homepage "https://hexler.net/software/kodelife"

  livecheck do
    url "https://hexler.net/pub/kodelife/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "KodeLife.app"
end
