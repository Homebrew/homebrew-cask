cask "equibop" do
  version "3.3.2"
  sha256 "c8b886b9a28e1842627ece313cebe33d04be8d3cd7fadf6daf46b30e305ec24c"

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
