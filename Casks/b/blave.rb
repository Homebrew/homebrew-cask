cask "blave" do
  version "0.1.60"
  sha256 "0da1e8ca3cffe8795979cd637a9ca910146e4d090bb3e2e5d4589db280dd33fa"

  url "https://github.com/Blave-TW/blave-agent/releases/download/desktop-v#{version}/Blave-#{version}-universal.dmg"
  name "Blave"
  desc "Algorithmic trading and backtesting app using AI agents"
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
