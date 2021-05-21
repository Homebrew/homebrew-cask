cask "omniplan" do
  if MacOS.version <= :high_sierra
    version "3.13"
    sha256 "82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  else
    version "4.2.6"
    sha256 "f6f78fe63a30ea28ee904944e60f391d9ffb82db1aa9c55c37fa052392f70532"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  end

  name "OmniPlan"
  desc "Project planning and management software"
  homepage "https://www.omnigroup.com/omniplan/"

  livecheck do
    url "https://www.omnigroup.com/download/latest/omniplan/"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/omniplan3"
  depends_on macos: ">= :high_sierra"

  app "OmniPlan.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
  ]
end
