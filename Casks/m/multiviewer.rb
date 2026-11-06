cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "31838601714a8fde37163f75c1d6fc31a46a2f294cc3a44858344ceb0ec9e0ac",
         intel: "3768e89abd0c967b144993adb1970ba9de51fab497e7ea7dea9512ed196cd93b"

  on_arm do
    version "2.15.1,P0KbA5YHNsJde0u6S0E1LCaT_SAMb4NE"
  end
  on_intel do
    version "2.15.1,ZquBQ80_TIL-V-pwfYZWixm9HeIq4IZ-"
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
