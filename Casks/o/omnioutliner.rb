cask "omnioutliner" do
  on_el_capitan :or_older do
    version "5.1.4"
    sha256 "91817e87a29c6a86f64b22f36e292b354aab89f63a070eeab117f4fbb2704ff0"

    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  end
  on_sierra do
    version "5.3.4"
    sha256 "dd329a070980ae6fe1aa9c55d398a2ab5b6192082455e7eb3526a9fccb3eaf42"

    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  end
  on_high_sierra do
    version "5.4.2"
    sha256 "a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395"

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}(n).dmg"
  end
  on_mojave do
    version "5.8.5"
    sha256 "4439e6f700e71e3ec182fd16be9eca3de3afa3db4c4894c396297ba59b0f6b10"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end
  on_catalina do
    version "5.8.5"
    sha256 "4439e6f700e71e3ec182fd16be9eca3de3afa3db4c4894c396297ba59b0f6b10"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end
  on_big_sur :or_newer do
    version "5.12"
    sha256 "1f417470258c3505cc2226689a814f5a4b1fde78f268ba4a151aae923cbe694c"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniOutliner-#{version}.dmg"
  end

  name "OmniOutliner"
  desc "Note taking application and information organiser"
  homepage "https://www.omnigroup.com/omnioutliner/"

  livecheck do
    url "https://www.omnigroup.com/download/latest/omnioutliner/"
    strategy :header_match
  end

  auto_updates true

  app "OmniOutliner.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Application Scripts/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}",
    "~/Library/Containers/com.omnigroup.OmniOutliner#{version.major}.Thumbnails",
  ]
end
