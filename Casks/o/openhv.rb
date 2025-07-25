cask "openhv" do
  version "20250725"
  sha256 "7ccb58351554bbabf2181c6330cfabd139ba555b7f71ee91d9880c7c8110c60f"

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
