cask "omnipresence" do
  version "1.10"
  sha256 "b2d81dfd14a38a4c41013c072da4099a71c9ce192167f63e837254f2720c2b9d"

  url "https://downloads.omnigroup.com/software/macOS/14/OmniPresence-#{version}.dmg"
  name "OmniPresence"
  desc "Document syncing application"
  homepage "https://www.omnigroup.com/more"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "OmniPresence.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPresence",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnipresence.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPresence",
    "~/Library/Preferences/com.omnigroup.OmniPresence.plist",
  ]
end
