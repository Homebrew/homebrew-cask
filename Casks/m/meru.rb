cask "meru" do
  arch arm: "-arm64"

  version "3.19.1"
  sha256 arm:   "1d4a5ba8987b7bda832f41b4ffb854cbefed9f80c73c76125916081eecafa0af",
         intel: "c477ff4047462dbe79d174af49d89b93c545fc804adfb5ffa7433a8d7b197ff2"

  url "https://github.com/zoidsh/meru/releases/download/#{version}/Meru-#{version}#{arch}.dmg",
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
