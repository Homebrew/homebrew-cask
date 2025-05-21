cask "omniplan" do
  on_big_sur :or_older do
    on_el_capitan :or_older do
      version "3.7.3"
      sha256 "1a3ab3a1ea22bdbdf9c1afda8cafc9a2fdf60cb4414f142b621c8758f81720bd"

      url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniPlan-#{version}.dmg"
    end
    on_sierra do
      version "3.10.4"
      sha256 "a30728e72ae970dbf37b2ef9942a6b54267aa3456288dcc1815f20b44667e9e5"

      url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniPlan-#{version}.dmg"
    end
    on_high_sierra do
      version "3.13"
      sha256 "82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5"

      url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
    end
    on_mojave do
      version "4.2.7"
      sha256 "157cbea0055a87b2c078c336ea9f5d9aaa9caa242c92265f410e5d7ac534883f"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
    end
    on_catalina do
      version "4.2.7"
      sha256 "157cbea0055a87b2c078c336ea9f5d9aaa9caa242c92265f410e5d7ac534883f"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
    end
    on_big_sur do
      version "4.6"
      sha256 "2d674c80ee5c60e3697a38b4933084958ea2b1f990a28827722b803257e7722d"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniPlan-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "4.9.4"
    sha256 "753795027f0ce28055b21155b19b22d8a376aea0a79287d668c7c84d59fd5567"

    url "https://downloads.omnigroup.com/software/macOS/12/OmniPlan-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omniplan/"
      strategy :header_match
    end
  end

  name "OmniPlan"
  desc "Project planning and management software"
  homepage "https://www.omnigroup.com/omniplan/"

  auto_updates true

  app "OmniPlan.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
  ]
end
