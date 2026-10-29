cask "tldv" do
  arch arm: "-arm64"

  version "3.0.399"
  sha256 arm:   "0cdf977c417c92989efc0ce36e695efd39fed9dbd6ae61425c6c3fdddd9b93c9",
         intel: "cba482a04c5687317774fb11d779a4cd47aa2eb3960ccbe4e73bbdd1b8e5cdb2"

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
