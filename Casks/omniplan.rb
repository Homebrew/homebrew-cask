cask 'omniplan' do
  if MacOS.version <= :high_sierra
    version '3.13'
    sha256 '82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5'

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  else
    version '3.14'
    sha256 '77167cbb0edae0df4e95ab275e778ad4aff4904bc5525fc810a33352d04fe203'

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  end

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
