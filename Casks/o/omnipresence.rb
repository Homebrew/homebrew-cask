cask "omnipresence" do
  on_catalina :or_older do
    version "1.8"
    sha256 "dfb2d162103b3c23e2225dee2322d006f72be3b99b1283c365f6fdd4d1e047d3"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPresence-#{version}.dmg"
  end
  on_big_sur :or_newer do
    version "1.9.1"
    sha256 "b20077353ee8815e74770c20c331bb3a23fe8cbd2aa6ef449142fe19a0976002"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniPresence-#{version}.dmg"
  end

  name "OmniPresence"
  desc "Document syncing application"
  homepage "https://www.omnigroup.com/omnipresence"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence"
    strategy :sparkle
  end

  app "OmniPresence.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPresence",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnipresence.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPresence",
    "~/Library/Preferences/com.omnigroup.OmniPresence.plist",
  ]
end
