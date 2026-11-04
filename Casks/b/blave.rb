cask "blave" do
  version "0.1.44"
  sha256 "35391c12d0c0a52522d3bb4d360e51b5b2558cccbd0bbe2a9e31299bdb988483"

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
    "~/Library/Application Support/blave-desktop",
    "~/Library/Caches/blave-desktop-updater",
    "~/Library/Caches/org.blave.desktop",
    "~/Library/Caches/org.blave.desktop.ShipIt",
    "~/Library/HTTPStorages/org.blave.desktop",
    "~/Library/Preferences/org.blave.desktop.plist",
    "~/Library/Saved Application State/org.blave.desktop.savedState",
  ]
end
