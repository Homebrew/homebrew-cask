cask "tldv" do
  arch arm: "-arm64"

  version "3.0.455"
  sha256 arm:   "51f9275c7e5a141501d33982f0d7a45b0830bd51aa99b60b7bcb5bb6880b7c57",
         intel: "c4f86d5a9b3f3d5cd742a2c289c0d5945e58a15df52386006ab12c985b928268"

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
