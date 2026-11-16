cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.7"
  sha256 arm:   "c487f48e0330008966cc98fb49210d2d74f028836f4b7448869ddb0ab930efa9",
         intel: "9b8b22ab98545a0ea4e7e9d02ccfaa9265abbd4dc9ea4263e6da10930e72c145"

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
