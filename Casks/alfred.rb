cask 'alfred' do
  version '2.8.3_435'
  sha256 'd3ff9dd4a3a889cf689f817feed6bc06b49346cfcf4985cf6a3b4c1639fb2c55'

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
