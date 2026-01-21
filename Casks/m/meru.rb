cask "meru" do
  arch arm: "-arm64"

  version "3.27.0"
  sha256 arm:   "abefd4defe7beeafaeeee2e80b5c916f7b3f77649e41876d5d51fc64368f025f",
         intel: "9816ba5a5ce57381e50cd16a7c61c9ee1b6d53843c58fde0c74842ef1a2cf347"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg",
      verified: "github.com/zoidsh/meru/"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: ">= :monterey"

  app "Meru.app"

  zap trash: [
    "~/Library/Application Support/Meru",
    "~/Library/Caches/meru-updater",
    "~/Library/Caches/sh.zoid.meru",
    "~/Library/Caches/sh.zoid.meru.ShipIt",
    "~/Library/HTTPStorages/sh.zoid.meru",
    "~/Library/Logs/Meru",
    "~/Library/Preferences/sh.zoid.meru.plist",
    "~/Library/Saved Application State/sh.zoid.meru.savedState",
    "~/Library/WebKit/sh.zoid.meru",
  ]
end
