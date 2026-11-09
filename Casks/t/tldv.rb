cask "tldv" do
  arch arm: "-arm64"

  version "3.0.417"
  sha256 arm:   "b678a07861f980fbd5933958599d528ae2910402598356dabe36091d864ad31a",
         intel: "f189501e2b281d7a5d99c84d394bd6a05538dd7d2bafd7cb9e27e7aa9ea6d3fc"

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
