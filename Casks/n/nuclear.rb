cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "fd22b2bd784c6d6c55b1c930a4442c1a6f015c4c05bcec85dc7b75b570cfabf7",
         intel: "519875dd51ca367c6fa1ffe62b65f253dd3839ffc01bee2f5bf8fa6cb71a2582"

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
