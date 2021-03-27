cask "kodelife" do
  version "0.9.8,146"
  sha256 "75a1e9def907d47baef5bb194c48d0db501ce763f5f140bbcfdcf0172f4b6561"

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
