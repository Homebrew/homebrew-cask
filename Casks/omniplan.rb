cask 'omniplan' do
  version '3.9.3'
  sha256 'da90a0377117aea9b4e81d386cae9203f3ce486abe3c08cd49c7a22149296a5c'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniPlan-#{version}.dmg"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  app 'OmniPlan.app'

  zap trash: [
               "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
               "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
             ]
end
