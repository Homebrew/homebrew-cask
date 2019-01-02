cask 'omniplan' do
  version '3.10.3'
  sha256 '8d541bacffc4594d5a2994173113e86def1e9ae84128eb4c34b5de489ad8f662'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniPlan-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniPlan#{version.major}"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  depends_on macos: '>= :sierra'

  app 'OmniPlan.app'

  zap trash: [
               "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
               "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
             ]
end
