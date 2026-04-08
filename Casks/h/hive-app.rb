cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.96"
  sha256 arm:   "caab560cfadcc7f183e1835b193e00808f6c3f3726c582be17dba556cc0cebe8",
         intel: "b1dfdd43ea2a2d74bedb55871bce3eb14a46022e5007d2232a386977b97ce652"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
