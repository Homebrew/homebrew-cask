cask "multiviewer-for-f1" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.28.2,132939981"
    sha256 "0e011f2df0e7a7ef19bf6f09f1a262100f1a68a23eaa242715efb68c88d05e04"
  end
  on_intel do
    version "1.28.2,132940727"
    sha256 "64c4fad2ad9b754f5b53d20ed076ec6e1c167e16f0cd4d1b14f482b7ac4d7966"
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
