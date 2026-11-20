cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.8"
  sha256 arm:   "e6a1925d5343ab8fad1391fade374f43b561012ccc674ed5f37297ffd8d19f7e",
         intel: "6b42cacc2e89b393e845d3d5dfd716b19f28bf84a51b433cc0c395ed2ed27853"

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
