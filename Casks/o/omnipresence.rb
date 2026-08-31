cask "omnipresence" do
  version "1.9.1"
  sha256 "b20077353ee8815e74770c20c331bb3a23fe8cbd2aa6ef449142fe19a0976002"

  url "https://downloads.omnigroup.com/software/macOS/11/OmniPresence-#{version}.dmg"
  name "OmniPresence"
  desc "Document syncing application"
  homepage "https://www.omnigroup.com/omnipresence"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence"
    strategy :sparkle
  end

  depends_on :macos

  app "OmniPresence.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPresence",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnipresence.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPresence",
    "~/Library/Preferences/com.omnigroup.OmniPresence.plist",
  ]
end
