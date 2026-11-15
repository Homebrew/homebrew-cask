cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.6"
  sha256 arm:   "6976ad2731a9efde1ee34e5c9f8ba535644551dcc047374cbeff0c51ffb09d97",
         intel: "02c33493bdd4552f1a6c3134710227d7792b5a1525e025131c45a016bd589d66"

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
