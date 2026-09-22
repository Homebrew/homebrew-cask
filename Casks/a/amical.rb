cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "1.12.2"
  sha256 arm:   "0ba53a775c46fd83e07c84c491cd4ec5d3958bd9a278b27e78d0eb259f6d02cb",
         intel: "732808a51e995d01f5da56a9a1b65711a740479d123947b23bbec2d952d0e7e0"

  url "https://github.com/amicalhq/amical/releases/download/v#{version}/Amical-macos-#{arch}.dmg"
  name "Amical"
  desc "AI dictation app"
  homepage "https://amical.ai/"

  livecheck do
    url "https://update.electronjs.org/amicalhq/amical/darwin-#{arch}/0.0.0"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["name"][regex, 1]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Amical.app"

  zap trash: [
    "~/Library/Application Support/Amical",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amical.desktop.sfl*",
    "~/Library/Caches/com.amical.desktop",
    "~/Library/Caches/com.amical.desktop.ShipIt",
    "~/Library/HTTPStorages/com.amical.desktop",
    "~/Library/Logs/Amical",
    "~/Library/Preferences/com.amical.desktop.plist",
  ]
end
