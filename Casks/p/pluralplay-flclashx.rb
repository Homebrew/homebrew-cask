cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.2"
  sha256 arm:   "4c440b3587c90d88a3fad3623122aa617d398dec70ac0269b5bf9d57d8e65826",
         intel: "97b42ed747366375cf8df9952c00e9b6fb476fa6819b4c6d5de0efe8f1a81f01"

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
