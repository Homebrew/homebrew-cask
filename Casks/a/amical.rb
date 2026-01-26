cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "05fe22b1d97b79b2ea1c1af54b2d21289430853b60ee4d7bbd2c7a84f5b7e196",
         intel: "252c5ba0107d855100fcc8af5c4a5084f87769570cfa82bde9ff11b3b3eb20fb"

  url "https://github.com/amicalhq/amical/releases/download/v#{version}/Amical-#{version}-#{arch}.dmg",
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
