cask "hive-app" do
  arch arm: "-arm64", intel: ""

  version "1.0.94"
  sha256 arm:   "b03576d8005be040314ad37518b25b1d6a625087561a5662ff4c984bf2bf360d",
         intel: "eed26d86e0b1691641329b2a6346081271ac274e5ad0e91e78bcd2fcc9fee17d"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  livecheck do
    url :url
    strategy :github_latest
  end

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
