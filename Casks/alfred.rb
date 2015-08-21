cask :v1 => 'alfred' do
  version '2.7.2_400'
  sha256 '1d83ae18e99869d981dcbcc74a5ce0333bbf9d528cc0c8fa5e48bb74f756eaf1'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :freemium

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end

  uninstall :quit => 'com.runningwithcrayons.Alfred-2'

  zap :delete => [
                  '~/Library/Application Support/Alfred 2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                  '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState'
                 ]
end
