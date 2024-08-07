cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.36"
  sha256 arm:   "b9499b62fadb3d9050f9afb6085ff2bb21092cb2ef5c93f47e9a9fa3da185446",
         intel: "5cf212272591f5bd4c40047b0391c787b5a0b02a476e0f4aff0cfdc0b80684ec"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
