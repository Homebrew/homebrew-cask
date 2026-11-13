cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1"
  sha256 arm:   "10bae9eec3a4e914b769c447f9d7b32cd08298812824c30a5286335e85306dd0",
         intel: "610fa0e8ce9b5c28e26bee903f02c980b44956667f336151eac8b3d5cc93abc5"

  url "https://github.com/pluralplay/FlClashX/releases/download/v#{version}/FlClashX-macos-#{arch}.dmg"
  name "FlClashX"
  desc "Cross-platform proxy client based on ClashMeta"
  homepage "https://github.com/pluralplay/FlClashX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "FlClashX.app"

  zap trash: [
    "~/Library/Application Support/FlClashX",
    "~/Library/Caches/com.pluralplay.FlClashX",
    "~/Library/Preferences/com.pluralplay.FlClashX.plist",
  ]
end
