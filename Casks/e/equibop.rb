cask "equibop" do
  version "3.3.4"
  sha256 "7af68c2c1554207ac8edf47c58086674ede355307eb7603784a634247f9f7e7d"

  url "https://github.com/Equicord/Equibop/releases/download/v#{version}/Equibop-#{version}-universal.dmg"
  name "Equibop"
  desc "Custom Discord App"
  homepage "https://github.com/Equicord/Equibop"

  livecheck do
    url "https://github.com/Equicord/Equibop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "equibop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.equicord.equibop.sfl*",
    "~/Library/Application Support/equibop",
    "~/Library/Caches/org.equicord.equibop",
    "~/Library/Caches/org.equicord.equibop.ShipIt",
    "~/Library/HTTPStorages/org.equicord.equibop",
    "~/Library/Preferences/org.equicord.equibop.plist",
    "~/Library/Saved Application State/org.equicord.equibop.savedState",
  ]
end
