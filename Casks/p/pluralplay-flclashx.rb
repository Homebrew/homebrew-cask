cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.1"
  sha256 arm:   "0d3d36f5a713b0d00257539b33096b904d80f9a56a9bd9179bcf00c243d130ad",
         intel: "1292ccfbcb340307c79504af9269b6a055427fd9d72f2bb43b8cac0a1b910419"

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
