cask "multiviewer-for-f1" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.26.10,128048240"
    sha256 "7aa6a31e79d446b3d3cc3f9bcf4b4d15e33cdc8cff6cc67aa390bf8f43e7c2dc"
  end
  on_intel do
    version "1.26.10,128048860"
    sha256 "5a0987c1294da61632ad2af8fcd9409353078667e371ac3012045ccd89954488"
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
