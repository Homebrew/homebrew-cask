cask "meru" do
  arch arm: "-arm64"

  version "3.60.0"
  sha256 arm:   "a45aa11da1b91f40e1d8ea35c2e5205129e1604c35f08fa98fef4da6b3dcda24",
         intel: "711d24229951f64aac2a04b8d9cc9cfa56a2812e0cf3937362bcc3d9cb66d3d4"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :monterey

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
