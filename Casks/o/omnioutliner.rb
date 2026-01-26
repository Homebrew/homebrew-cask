cask "omnioutliner" do
  on_sonoma :or_older do
    on_catalina :or_older do
      version "5.8.5"
      sha256 "4439e6f700e71e3ec182fd16be9eca3de3afa3db4c4894c396297ba59b0f6b10"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
    end
    on_big_sur do
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
    version "6.0.2"
    sha256 "96f0bdb2206f5b6ac6fa60a2d96f72d8a12dea131ae60746521b1e9ff113dabe"

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

  app "OmniOutliner.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
  ]
end
