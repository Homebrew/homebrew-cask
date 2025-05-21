cask "omnifocus" do
  on_ventura :or_older do
    on_el_capitan :or_older do
      version "2.10"
      sha256 "e808a72e60cdff9ff5aa1046d856bf62d6418e4915248816c4640e32e52fd8e8"

      url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"
    end
    on_sierra do
      version "2.12.4"
      sha256 "8a2dc53331dba804f6781773fef546a03c181fc4ff0eb7ee4f871c10342621f0"

      url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
    end
    on_high_sierra do
      version "3.4.6"
      sha256 "b770b046c2c59f6e55f54d0ad822d5aa755a18aa201d333341de14ebbbcc6a85"

      url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniFocus-#{version}.dmg"
    end
    on_mojave do
      version "3.11.7"
      sha256 "21c0a63b6bd8c8ff3e5067f4ccd0ab16c9fd65815a7305e184ed27723bd0aa15"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniFocus-#{version}.dmg"
    end
    on_catalina do
      version "3.11.7"
      sha256 "21c0a63b6bd8c8ff3e5067f4ccd0ab16c9fd65815a7305e184ed27723bd0aa15"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniFocus-#{version}.dmg"
    end
    on_big_sur do
      version "3.15.8"
      sha256 "f0fe7bf0fafc35d50a23fe0d614b9403b58de9439704a2e3d93fbdc602aab661"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniFocus-#{version}.dmg"
    end
    on_monterey do
      version "3.15.8"
      sha256 "f0fe7bf0fafc35d50a23fe0d614b9403b58de9439704a2e3d93fbdc602aab661"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniFocus-#{version}.dmg"
    end
    on_ventura do
      version "4.3.3"
      sha256 "3baf339d5ea9e421d0467c41d64c9ee0de820b1881ceb28acbc6597c4c93a53a"

      url "https://downloads.omnigroup.com/software/macOS/13/OmniFocus-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "4.5.3"
    sha256 "24ec296dcecf7323575055612ee6cead4a2309fb17bcd5366691c64a580afb47"

    url "https://downloads.omnigroup.com/software/macOS/14/OmniFocus-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnifocus/"
      strategy :header_match
    end
  end

  name "OmniFocus"
  desc "Scheduling application focusing on organisation"
  homepage "https://www.omnigroup.com/omnifocus/"

  auto_updates true

  app "OmniFocus.app"

  uninstall quit: "com.omnigroup.OmniFocus#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/34YW5XSRB7.com.omnigroup.OmniFocus*",
    "~/Library/Application Scripts/34YW5XSRB7.com.omnigroup.OmniSoftwareUpdate",
    "~/Library/Application Scripts/com.omnigroup.OmniFocus*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus*.sfl*",
    "~/Library/Caches/Metadata/com.omnigroup.OmniFocus*",
    "~/Library/Containers/com.omnigroup.OmniFocus*",
    "~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus",
    "~/Library/Preferences/com.omnigroup.OmniFocus*.LSSharedFileList.plist",
    "~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist",
    "~/Library/Saved Application State/com.omnigroup.OmniFocus*.savedState",
  ]
end
