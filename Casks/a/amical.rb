cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "ee5e74c8ccfa8098494c62c0cfa59480e11e6a9d5e85870783d9eef16f0cc523",
         intel: "483e12caef494dcb641e2d4b931a480c54fde74688bff29d26f02e0f544294fb"

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
