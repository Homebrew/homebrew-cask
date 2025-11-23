cask "omniplan" do
  on_big_sur :or_older do
    on_catalina :or_older do
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
    version "4.10.1"
    sha256 "8eac6fee4a8452a31ff3a43b214cff04dfad0c0479acbafde09a4a28ed908489"

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
