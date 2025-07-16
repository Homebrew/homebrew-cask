cask "openhv" do
  version "20250715"
  sha256 "1c04471267aee1ff970c03dec8b9a4c37705fc8b785c3132000dae65845e2bb5"

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
