cask "openhv" do
  version "20250628"
  sha256 "74ab06b509e3a5cfc149d034b53d366ab631d2b5ed767ad3b8b25cb9215545c4"

  url "https://github.com/OpenHV/OpenHV/releases/download/#{version}/OpenHV-#{version}.dmg",
      verified: "github.com/OpenHV/OpenHV/"
  name "OpenHV"
  desc "Pixel art science-fiction real-time strategy game"
  homepage "https://www.openhv.net/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "OpenHV.app"

  zap trash: [
    "~/Library/Application Support/OpenRA/hv-news.json",
    "~/Library/Application Support/OpenRA/Logs",
    "~/Library/Application Support/OpenRA/ModMetadata",
    "~/Library/Saved Application State/net.openra.mod.hv.savedState",
  ]
end
