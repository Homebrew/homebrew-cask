cask "omniplan" do
  if MacOS.version <= :high_sierra
    version "3.13"
    sha256 "82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  else
    version "4.2.3"
    sha256 "c8a629599ba2277adeda1ec4092aabf2af1bb551f7a07e15f212f79f69100886"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  end

  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.omnigroup.com/download/latest/omniplan/"
  name "OmniPlan"
  desc "Project planning and management software"
  homepage "https://www.omnigroup.com/omniplan/"

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
