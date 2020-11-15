cask "omniplan" do
  if MacOS.version <= :high_sierra
    version "3.13"
    sha256 "82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  else
    version "4.2.1"
    sha256 "98fc0f12c3e63f4d416fe45df8f6011a8c8b4604f90e16673dd9152bd0ca2f2b"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  end

  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.omnigroup.com/download/latest/omniplan/"
  name "OmniPlan"
  desc "Project planning and management software"
  homepage "https://www.omnigroup.com/omniplan/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OmniPlan.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
  ]
end
