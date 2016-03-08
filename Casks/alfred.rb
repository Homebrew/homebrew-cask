cask 'alfred' do
  version '2.8.2_432'
  sha256 'f9c923b6c854132824423d6c3330dff38100e23fc750c8212b09a7356db0a59a'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  license :freemium

  auto_updates true
  accessibility_access true

  app 'Alfred 2.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end

  uninstall quit:       'com.runningwithcrayons.Alfred-2',
            login_item: 'Alfred 2'

  zap delete: [
                '~/Library/Application Support/Alfred 2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
              ]
end
