cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "510d9f4bf373547cced7357d8547ca632c7c33029e2d3732c7b0fccff79867a9",
         intel: "78f13f0caac47be6c4705398c036cdf7951a8d0befcc886a668cb940d952c3ed"

  on_arm do
    version "2.13.0,ajyeyNgFAxVt334Hkyux_U-Wp-lY4PEV"
  end
  on_intel do
    version "2.13.0,3zLssLy06onFL7rDqgwlNJ_9DH1TQIt8"
  end

  url "https://releases.multiviewer.app/v/#{version.csv.first}/1/#{version.csv.second}/MultiViewer-#{version.csv.first}-#{arch}.dmg"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.multiviewer-for-f1.sfl*",
    "~/Library/Application Support/MultiViewer",
    "~/Library/Caches/com.electron.multiviewer-for-f1",
    "~/Library/Caches/com.electron.multiviewer-for-f1.ShipIt",
    "~/Library/HTTPStorages/com.electron.multiviewer-for-f1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
