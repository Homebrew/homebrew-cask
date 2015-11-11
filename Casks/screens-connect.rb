cask :v1_1 => 'screens-connect' do
  version '3.6_b930'
  sha256 '23570864f111c8eb610f61ad6cb35ed4a9f11cd9836a7c606d89ba87daf2f01b'

  # edovia.com is the official download host per the appcast feed
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8816
  url "http://download.edovia.com/screensconnect/screensconnect_#{version}.dmg"
  appcast 'https://screensconnect.com/sparkle/appcast.xml'
  name 'Screens Connect'
  homepage 'https://screensconnect.com'
  license :gratis

  pkg 'Screens Connect.pkg'

  depends_on :macos => '>= :mountain_lion'

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8833
  uninstall :script => {
              :executable => 'Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool',
              :must_succeed => false
              },
            :pkgutil => 'com.edovia.pkg.screens.connect.*'

  uninstall_preflight do
    set_permissions "#{staged_path}/Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool", '+x'
  end
end
