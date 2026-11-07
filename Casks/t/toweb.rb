cask "toweb" do
  version "15.0.3"
  sha256 "fe31dca8184de1b223a2b292dfe470c1710a1b8638881f3d21259cc8616e43a1"

  url "https://www.lauyan.com/download/toweb/updates/v15/toweb-#{version}-universal.zip"
  name "TOWeb"
  desc "Website and online store builder that works offline"
  homepage "https://www.lauyan.com/en/"

  livecheck do
    url "https://www.lauyan.com/download/toweb/updates/v15/feed-toweb-15-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "TOWeb V15.app"

  zap trash: [
    "~/Library/Application Support/toweb15",
    "~/Library/Caches/com.lauyan.toweb15",
    "~/Library/Caches/com.lauyan.toweb15.ShipIt",
    "~/Library/Preferences/com.lauyan.toweb15.plist",
    "~/Library/Saved Application State/com.lauyan.toweb15.savedState",
  ]
end
