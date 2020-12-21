cask "kodelife" do
  version "0.9.7,142"
  sha256 "815cbc208be23572a5acd3e6c49b809d39ec57dcf5fe4d1639e12347179be3c0"

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
