cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "e99912404f9a00d38513407a668146fd09040351e1da69a6ae5a787c4afbec77",
         intel: "eb17683f57d0ad636d179683f94e46b8de090d2c4ff69e1f8cab410a5e69a79e"

  url "https://github.com/pluralplay/FlClashX/releases/download/v#{version}/FlClashX-macos-#{arch}.dmg"
  name "FlClashX"
  desc "Cross-platform proxy client based on ClashMeta"
  homepage "https://github.com/pluralplay/FlClashX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "FlClashX.app"

  zap trash: [
    "~/Library/Application Support/FlClashX",
    "~/Library/Caches/com.pluralplay.FlClashX",
    "~/Library/Preferences/com.pluralplay.FlClashX.plist",
  ]
end
