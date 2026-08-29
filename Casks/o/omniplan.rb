cask "omniplan" do
  on_big_sur :or_older do
    on_big_sur :or_older do
      version "4.6"
      sha256 "2d674c80ee5c60e3697a38b4933084958ea2b1f990a28827722b803257e7722d"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniPlan-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "4.10.3"
    sha256 "f1b09446978790b0bab8fe7993019f7bee54c2d1faebdc1a385a0794eca0e8d3"

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
  depends_on :macos

  app "OmniPlan.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
  ]
end
