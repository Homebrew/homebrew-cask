cask 'omniplan' do
  version '3.13'
  sha256 '82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5'

  url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniPlan#{version.major}"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  depends_on macos: '>= :high_sierra'

  app 'OmniPlan.app'

  zap trash: [
               "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
               "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
             ]
end
