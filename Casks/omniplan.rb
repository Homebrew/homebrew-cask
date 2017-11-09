cask 'omniplan' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omniplan'
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'

  app 'OmniPlan.app'

  zap trash: [
               '~/Library/Application Scripts/com.omnigroup.OmniPlan3',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan3.sfl',
               '~/Library/Containers/com.omnigroup.OmniPlan3',
               '~/Library/Preferences/com.omnigroup.OmniPlan3.plist',
             ]
end
