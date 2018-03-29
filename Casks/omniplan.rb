cask 'omniplan' do
  version '3.9.2'
  sha256 'a96ac0fcb37f1c48f2160ad0c7658535573a089a84786d6d3a489636736c4498'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniPlan-#{version}.dmg"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  app 'OmniPlan.app'

  zap trash: [
               '~/Library/Application Scripts/com.omnigroup.OmniPlan3',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan3.sfl*',
               '~/Library/Containers/com.omnigroup.OmniPlan3',
               '~/Library/Preferences/com.omnigroup.OmniPlan3.plist',
             ]
end
