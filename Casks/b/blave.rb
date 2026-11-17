cask "blave" do
  version "0.1.55"
  sha256 "9348b885d0a343e797d67594fadfbdc6e0ff44c2033176940def6da42c6aafe7"

  url "https://github.com/Blave-TW/blave-agent/releases/download/desktop-v#{version}/Blave-#{version}-universal.dmg"
  name "Blave"
  desc "Workspace where AI coding agents build, backtest and run trading strategies"
  homepage "https://blave.org/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Blave.app"

  zap trash: [
    "~/Library/Application Support/Blave",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.blave.desktop.sfl*",
    "~/Library/Caches/blave-desktop-updater",
    "~/Library/Caches/org.blave.desktop",
    "~/Library/Caches/org.blave.desktop.ShipIt",
    "~/Library/HTTPStorages/org.blave.desktop",
    "~/Library/Preferences/org.blave.desktop.plist",
    "~/Library/Saved Application State/org.blave.desktop.savedState",
  ]
end
