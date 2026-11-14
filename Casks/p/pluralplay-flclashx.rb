cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.5"
  sha256 arm:   "9aee5a209eb9c1dfdd7d3cc0c645ed963944ade731522a657b3b4ac71472316e",
         intel: "9e8296b1de2c77263c4532e406a309d25526936b8520a92e6aead40a1f49d50e"

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
    "~/Library/Application Support/com.follow.clashx",
    "~/Library/Application Support/FlClashX",
    "~/Library/Caches/com.follow.clashx",
    "~/Library/Preferences/com.follow.clashx.plist",
  ]
end
