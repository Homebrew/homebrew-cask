cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2.7.3,415540990"
    sha256 "c2ea6950f6821c5efeccb9c0f626116a2fc7b795974b9861170f780d3da2c411"
  end
  on_intel do
    version "2.7.3,415544376"
    sha256 "d186a8fee4b1e5fb965bfc7bcef8dc85d65e7d004ac65ba9c4b2c46c4fb02fb8"
  end

  url "https://releases.multiviewer.app/download/#{version.csv.second}/MultiViewer.for.F1-#{version.csv.first}-#{arch}.dmg"
  name "MultiViewer"
  desc "Unofficial desktop client for F1 TV"
  homepage "https://multiviewer.app/"

  livecheck do
    url "https://api.multiviewer.dev/api/v1/releases/latest"
    regex(%r{/([^/]+?)/MultiViewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :json do |json, regex|
      json["downloads"]&.flat_map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "MultiViewer.app"

  zap trash: [
    "~/Library/Application Support/MultiViewer",
    "~/Library/Caches/com.electron.multiviewer-for-f1",
    "~/Library/Caches/com.electron.multiviewer-for-f1.ShipIt",
    "~/Library/HTTPStorages/com.electron.multiviewer-for-f1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
