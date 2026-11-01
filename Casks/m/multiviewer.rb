cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "bbb11364e065fa21839367c95ef3323cc34a50bb77c82f9baf2ec61dbbfc8f99",
         intel: "1735daa83eb98fb78013358d05f62c7687d83f5ba1b043bd18f3224ea255d9f3"

  on_arm do
    version "2.13.1,AVF6s9vd3IKTf5k4DtYJlD8OKt95ju-G"
  end
  on_intel do
    version "2.13.1,4ogMiu7ALJvB9vgLDoLTkVCyY_5EpTXQ"
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
