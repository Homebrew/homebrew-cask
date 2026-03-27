cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "359f30d21db202038be53841e745de4187dbb890eb4a1522b69671500141cddf",
         intel: "c89b6bf5b9cdd536685968c736f1532da40940b9cfb3d0e83144c1a0c543fa75"

  url "https://github.com/amicalhq/amical/releases/download/v#{version}/Amical-macos-#{arch}.dmg",
      verified: "github.com/amicalhq/amical/"
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
  depends_on macos: ">= :monterey"

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
