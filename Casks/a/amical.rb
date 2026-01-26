cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "f97bb3891fab66be1e706c85d16a6dc9cd1f04a1e17975fe3c42811ce0df3c9e",
         intel: "f071ce95bdafdd44c42c9f8b640fa63e184fcf0cbae122f9b0bd570547500495"

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
