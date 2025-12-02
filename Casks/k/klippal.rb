cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "2194ee7efef2a3524cfe32f9f05284b314d312a44b36fab0c3c8eb25f80bbb21",
         intel: "d943887b113942dbe45dc2768a9569c08a27cd6884cc16a2da5e76b67b78171f"

  url "https://github.com/adamtwo/klippal/releases/download/v#{version}/KlipPal-#{version}-#{arch}.dmg",
      verified: "github.com/adamtwo/klippal/"
  name "KlipPal"
  desc "Native macOS clipboard manager with local-only storage"
  homepage "https://github.com/adamtwo/klippal"

  depends_on macos: ">= :ventura"

  app "KlipPal.app"

  zap trash: [
        "~/Library/Application Support/KlipPal",
        "~/Library/Caches/com.klippal.KlipPal",
        "~/Library/Preferences/com.klippal.KlipPal.plist",
        "~/Library/Saved Application State/com.klippal.KlipPal.savedState",
      ]
end
