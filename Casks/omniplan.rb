cask 'omniplan' do
  if MacOS.version <= :high_sierra
    version '3.13'
    sha256 '82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5'

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  else
    version '4.0.2'
    sha256 'a7e2abcd825787d4e897280a91837a134c957578b7f4e5cc7cc5f57c31b95fc3'

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniPlan#{version.major}"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'OmniPlan.app'

  zap trash: [
               "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
               "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
               "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
             ]
end
