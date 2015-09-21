cask :v1 => 'alfred' do
  version '2.8_414'
  sha256 'c6e5c7d156cb590411ae21c2a3ce991548ae560139f2369e9d1ba04ef4388124'

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
