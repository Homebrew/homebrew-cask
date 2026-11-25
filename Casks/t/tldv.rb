cask "tldv" do
  arch arm: "-arm64"

  version "3.0.445"
  sha256 arm:   "7dfd0234dea822a89441acbbe1c8e9eb2da1865a0325ebf75dc89c9e60f6460e",
         intel: "36c0fc840fe2e5e008c81268ad96026538bb0dc3baafbf36fa3af29b28f8c640"

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
