cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2.11.0,z9pfn5AVGH5-xWDQm4tWd-_d5qYMFSE0"
    sha256 "8427451aefe40b5dd4e329020b6f63991557fe2f8107c0092cec0692658bd596"
  end
  on_intel do
    version "2.11.0,5akm1YQaEJuXqBa1YijUQl6jUPBCR58Q"
    sha256 "88e64bab519cf3b38e3cb43daaa494852f2454e1c03c1398c017cb234735d5bb"
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
