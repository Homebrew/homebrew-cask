cask "tldv" do
  arch arm: "-arm64"

  version "3.0.434"
  sha256 arm:   "8191177187fc3c20ffeb650a57d02799a4ebcd20bf120eb1c2ad431a794768f0",
         intel: "5fcedd86014851b03c7794b467316ddaf0f876b74bf3c3047386de0200cc25d6"

  url "https://releases.tldv.io/tldv-#{version}#{arch}.dmg"
  name "tl;dv"
  desc "AI meeting recorder and note taker"
  homepage "https://tldv.io/"

  livecheck do
    url "https://releases.tldv.io/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "tldv.app"

  uninstall quit: "io.tldv.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.tldv.desktop.sfl*",
    "~/Library/Application Support/tldv",
    "~/Library/Caches/io.tldv.desktop",
    "~/Library/Caches/io.tldv.desktop.ShipIt",
    "~/Library/Caches/tldv-updater",
    "~/Library/HTTPStorages/io.tldv.desktop",
    "~/Library/Preferences/ByHost/io.tldv.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.tldv.desktop.plist",
  ]
end
