cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "60381228faccf88c14a887d62e31eb9586c7b582f04ac760195cfb95db72a90a",
         intel: "808094497e6a4a58cfc4bf4153b702b13ce3665b6955e3cae05bfe6d9525c5c7"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.amical.desktop.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amical.desktop.sfl*",
    "~/Library/Caches/com.amical.desktop",
    "~/Library/Caches/com.amical.desktop.ShipIt",
    "~/Library/HTTPStorages/com.amical.desktop",
    "~/Library/Logs/Amical",
    "~/Library/Preferences/ai.amical.desktop.plist",
    "~/Library/Preferences/com.amical.desktop.plist",
  ]
end
