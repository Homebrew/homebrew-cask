cask "multiviewer" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "433dc94e9ceec2b16eb68bd0a7b0780e8bb62af7a78aeb1ad2609e7533e8417c",
         intel: "5d3ccfc33c0f59a50b27a9a8474402916216ae79e2b8d85fb19ea1426a65fc31"

  on_arm do
    version "2.16.0,GQvCwIgHt48OeEceEgUX3Gt5B8dkF05t"
  end
  on_intel do
    version "2.16.0,SR83VQdGm_MirE68qN1mHiNOQIvVj-16"
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
