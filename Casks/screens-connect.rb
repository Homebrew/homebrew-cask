cask 'screens-connect' do
  version '3.6_b930'
  sha256 '23570864f111c8eb610f61ad6cb35ed4a9f11cd9836a7c606d89ba87daf2f01b'

  # edovia.com is the official download host per the appcast feed
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8816
  url "http://download.edovia.com/screensconnect/screensconnect_#{version}.dmg"
  appcast 'https://screensconnect.com/sparkle/appcast.xml',
          :checkpoint => '96267f2ed0e8c84b45182902584d4897f0fe77a41ccbd720ec524d98cac7f4fb'
  name 'Screens Connect'
  homepage 'https://screensconnect.com'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  pkg 'Screens Connect.pkg'

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8833
  uninstall :script  => {
                          :executable   => 'Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool',
                          :must_succeed => false,
                        },
            :pkgutil => 'com.edovia.pkg.screens.connect.*'
end
