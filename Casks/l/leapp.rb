cask "leapp" do
  arch arm: "-arm64"

  version "0.24.0"
  sha256 arm:   "5eaaa64d1dc551e05028fa7ea728985c269d8eb246fa09537286f8fb25e79a60",
         intel: "a347d131b80963324abe597c79215741109df75890befc2d6536aaace057eea7"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
