cask "openhv" do
  version "20230917"
  sha256 "c7f0c0260f690d4039cf7146faad01bf1731b8b77a28eeb0cb9573200c5bc95f"

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
