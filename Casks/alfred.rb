cask 'alfred' do
  version '3.0_652'
  sha256 '01f0c1d83eeff378af071f446a9782320ab20503b588a0aff4a2daba5de12d45'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  license :freemium

  auto_updates true
  accessibility_access true

  app 'Alfred 3.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end

  uninstall quit:       'com.runningwithcrayons.Alfred-2',
            login_item: 'Alfred 2'

  zap delete: [
                '~/Library/Application Support/Alfred 3',
                '~/Library/Application Support/Alfred 2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-3',
                '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-3.savedState',
                '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
              ]
end
