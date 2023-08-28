cask "alex313031-thorium" do
  arch arm: "ARM", intel: "X64"

  version "M115.0.5790.172"
  sha256 arm:   "052a4d9ee2cbfab78671aae2ca9972b3b481fd0d47641d7668c519aa26b8f800",
         intel: "9ed769e69efe14decd37aa192f97a7b5a20fd038074cb217be2bc0d1b949fd4a"

  url "https://github.com/Alex313031/Thorium-MacOS/releases/download/#{version}/Thorium_MacOS_#{arch}.dmg",
      verified: "github.com/Alex313031/Thorium-MacOS/"
  name "Thorium"
  desc "Web browser"
  homepage "https://thorium.rocks/"

  livecheck do
    strategy :git
    regex(/^(M\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "thorium"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/Thorium",
    "~/Library/Caches/Thorium",
    "~/Library/Preferences/org.chromium.Thorium.plist",
    "~/Library/Saved Application State/org.chromium.Thorium.savedState",
  ]
end
