cask "openhv" do
  version "20250413"
  sha256 "dd8a68a2a76a1caf7678dbbfd24a182cd481fb9b3712759f71f4c769b564a05c"

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

  no_autobump! because: :requires_manual_review

  app "OpenHV.app"

  zap trash: [
    "~/Library/Application Support/OpenRA/hv-news.json",
    "~/Library/Application Support/OpenRA/Logs",
    "~/Library/Application Support/OpenRA/ModMetadata",
    "~/Library/Saved Application State/net.openra.mod.hv.savedState",
  ]
end
