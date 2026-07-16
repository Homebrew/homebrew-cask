cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "9e7ff48325fbeeb1153566b2392dcfdf5aab449056ab64757472e226341c16c3",
         intel: "83e6f116ccd30cb8406ac11850c3d7a107eab0071c9ff8c14e80d718b3772492"

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
  depends_on macos: :monterey

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
