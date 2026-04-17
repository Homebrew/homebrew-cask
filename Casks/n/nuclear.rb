cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.34.0"
  sha256 arm:   "b1525314955c2db18dcf29a0a5450c21f3f7633c9a79c89b0a82f182508fc81a",
         intel: "82db5d8e7d6aede5328693ef6c69ae1ba61a98e1b7f256038b28999a88131559"

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

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
