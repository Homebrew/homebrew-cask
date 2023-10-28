cask "multiviewer-for-f1" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.27.1,132817070"
    sha256 "ce5c504d91d31061b502512e4efb728a30e326fc798d3ba9a8f1b55c7df7d859"
  end
  on_intel do
    version "1.27.1,132817772"
    sha256 "14f27828be0f8893c0c66db84f1287b04c6e4dcd239c29db89fb517f3a8b1ee3"
  end

  url "https://releases.multiviewer.app/download/#{version.csv.second}/MultiViewer.for.F1-#{version.csv.first}-#{arch}.dmg"
  name "MultiViewer for F1"
  desc "Unofficial desktop client for F1TV"
  homepage "https://multiviewer.app/"

  livecheck do
    url "https://api.multiviewer.dev/api/v1/releases/latest"
    regex(%r{/([^/]+?)/MultiViewer[._-]for[._-]F1[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :json do |json|
      json["downloads"].flat_map do |item|
        item["url"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end

  auto_updates true

  app "MultiViewer for F1.app"

  zap trash: [
    "~/Library/Application Support/MultiViewer for F1",
    "~/Library/Caches/com.electron.multiviewer-for-f1",
    "~/Library/Caches/com.electron.multiviewer-for-f1.ShipIt",
    "~/Library/HTTPStorages/com.electron.multiviewer-for-f1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
