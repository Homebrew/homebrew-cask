cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.2"
  sha256 arm:   "d96c2e3bbc110f341f6e8f4cef25f66dcb18fc811467f2953478d047723da1ff",
         intel: "5ac7b2c8c6cf47c5a1a7e2c56e2b6e4a79a13428173afc73183fa413a78e7774"

  url "https://github.com/pluralplay/FlClashX/releases/download/v#{version}/FlClashX-macos-#{arch}.dmg"
  name "FlClashX"
  desc "Cross-platform proxy client based on ClashMeta"
  homepage "https://github.com/pluralplay/FlClashX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FlClashX.app"

  zap trash: [
    "~/Library/Application Support/FlClashX",
    "~/Library/Caches/com.pluralplay.FlClashX",
    "~/Library/Preferences/com.pluralplay.FlClashX.plist",
  ]
end
