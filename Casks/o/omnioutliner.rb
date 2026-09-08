cask "omnioutliner" do
  on_sonoma :or_older do
    on_big_sur :or_older do
      version "5.12"
      sha256 "1f417470258c3505cc2226689a814f5a4b1fde78f268ba4a151aae923cbe694c"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniOutliner-#{version}.dmg"
    end
    on_monterey :or_newer do
      version "5.15"
      sha256 "264c43d26fd090dc46395a6e40d0f7be22503b8c3c91df8a4c5bcacc6ed22857"

      url "https://downloads.omnigroup.com/software/macOS/12/OmniOutliner-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "6.2.1"
    sha256 "7c1ffddfc9cf0a1124c966f3c2351bae68872a10dd432588683607ed0c6b97d0"

    url "https://downloads.omnigroup.com/software/macOS/15/OmniOutliner-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnioutliner/"
      strategy :header_match
    end
  end

  name "OmniOutliner"
  desc "Note taking application and information organiser"
  homepage "https://www.omnigroup.com/omnioutliner/"

  auto_updates true
  depends_on :macos

  app "OmniOutliner.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnioutliner*.sfl*",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
  ]
end
