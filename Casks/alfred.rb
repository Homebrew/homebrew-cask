cask 'alfred' do
  version '2.8.2_431'
  sha256 'efff18c2459fa11be096934b4f00526d717df79687153ca246ac93fadd90daa3'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  license :freemium

  auto_updates true
  accessibility_access true

  app 'Alfred 2.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end

  uninstall :quit       => 'com.runningwithcrayons.Alfred-2',
            :login_item => 'Alfred 2'

  zap :delete => [
                   '~/Library/Application Support/Alfred 2',
                   '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                   '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                   '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                   '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                   '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
                 ]
end
