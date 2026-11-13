cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0"
  sha256 arm:   "3dad780109d1524106a07cc6499c7f0fb04f08290b0eb931a5f7bbcf2c153058",
         intel: "13ec119a142dddd8881ab1ec17e90152b379da2d9e71346a83d7a5fd11d6839c"

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
