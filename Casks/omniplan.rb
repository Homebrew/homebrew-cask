cask 'omniplan' do
  version '3.12.2'
  sha256 '43366b948dd32b77d6fcf1d8689210b9b9a7bd4ea55f6fdce6d05380e87093d9'

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
