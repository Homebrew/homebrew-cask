cask "multiviewer-for-f1" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.16.0,106876936"
    sha256 "8746a5975ea9d1fe7099e9febb54b54bc4978d86f8a15e8fd9ff682b7c1548bf"
  end
  on_intel do
    version "1.16.0,106878178"
    sha256 "ed35a1ba1e4d392b9736a7122f4afc02c7555f1b3c48f9568bf84a15781cc68c"
  end

  url "https://releases.multiviewer.app/download/#{version.csv.second}/MultiViewer.for.F1-#{version.csv.first}-#{arch}.dmg"
  name "MultiViewer for F1"
  desc "Unofficial desktop client for F1TV"
  homepage "https://multiviewer.app/"

  livecheck do
    url "https://api.multiviewer.dev/api/v1/releases/latest"
    regex(%r{/([^/]+?)/MultiViewer[._-]for[._-]F1[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :json do |json, regex|
      json["downloads"].map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
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
