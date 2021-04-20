cask "endless-sky" do
  version "0.9.13"
  sha256 "a9f8a8798ce6c653864a1fec1bf8250cecb8ff58f393f627340db0ff90f449e1"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "Endless Sky.app"
end
