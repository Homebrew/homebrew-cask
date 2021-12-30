cask "endless-sky" do
  version "0.9.14"
  sha256 "c55fe79a7403e7667222a4b1531a51da6dd3d2990ede0e97fd121672164dab4b"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "Endless Sky.app"
end
