cask 'bootstrap-studio' do
  version '5.2.0'
  sha256 '123bf4a9d1dd833e5ea65595e88c36a386b8725d3158e169f8b6a8c70b8f3f19'

  url "https://bootstrapstudio.io/releases/desktop/#{version}/Bootstrap%20Studio.dmg"
  appcast 'https://bootstrapstudio.io/pages/releases'
  name 'Bootstrap Studio'
  homepage 'https://bootstrapstudio.io/'

  auto_updates true

  app 'Bootstrap Studio.app'

  zap trash: [
               '~/Library/Application Support/bstudio',
               '~/Library/Application Support/CrashReporter/Bootstrap Studio*',
               '~/Library/Caches/bg.zine.bootstrapstudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/bg.zine.bootstrapstudio.sfl2',
               '~/Library/Caches/bg.zine.bootstrapstudio.ShipIt',
               '~/Library/Preferences/ByHost/bg.zine.bootstrapstudio.ShipIt.*',
               '~/Library/Preferences/bg.zine.bootstrapstudio.helper.plist',
               '~/Library/Preferences/bg.zine.bootstrapstudio.plist',
               '~/Library/Saved Application State/bg.zine.bootstrapstudio.savedState',
             ]
end
