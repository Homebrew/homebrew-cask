cask 'bootstrap-studio' do
  version '5.0.3'
  sha256 'd208d5bb2b87ec1ea65ab2017317f35050a8d13c96e5bf6106817ef47c1fea6f'

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
