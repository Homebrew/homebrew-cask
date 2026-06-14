cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.2"
  sha256 arm:   "e5b7fd8efb1dd5b34fb585dd8cdb4af8c07ff2148e5c5ece81ce5193278116c1",
         intel: "aec561bbd8ed5cf14c6c9ee0675a39a2332a88b3fcd6a9e4cd405a9f0926a6e7"

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
