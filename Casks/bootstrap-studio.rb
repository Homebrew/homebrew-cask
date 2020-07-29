cask 'bootstrap-studio' do
  version '5.1.1'
  sha256 'fcf93b8f71c7893f983f10290bb7d0bfd302b7f10acbb56f851a5d7f5b9fe34b'

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
