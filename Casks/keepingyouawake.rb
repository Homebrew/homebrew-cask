cask 'keepingyouawake' do
  version '1.4.2'
  sha256 '7e18482692401147d3d4ac1f38e0ace3993d69e7c864b4ef54373cbf10763202'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom',
          checkpoint: '27d3c30f31fafcec101e4f902ffd27ef62091b5ff28cd0c9f3bd7c77c49a0134'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'KeepingYouAwake.app'

  uninstall login_item: 'KeepingYouAwake'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.marcel-dierkes.keepingyouawake.sfl*',
               '~/Library/Application Support/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Caches/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Preferences/info.marcel-dierkes.KeepingYouAwake.plist',
               '~/Library/Saved Application State/info.marcel-dierkes.KeepingYouAwake.savedState',
             ]
end
