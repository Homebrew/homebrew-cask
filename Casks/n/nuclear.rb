cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.38.0"
  sha256 arm:   "f5cc7dad0bd366fb39036ef569f9d70cf5d599d45609a0683a6659a62ac31e66",
         intel: "74033ce203860121dc6032c0c3309191d3be188ca82dddf7393990d3b9da47ef"

  url "https://github.com/nukeop/nuclear/releases/download/player%40#{version}/Nuclear_#{version}_#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclearplayer.com/"

  livecheck do
    url :url
    regex(/^(?:player@)?v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
