cask 'screens-connect' do
  version '3.6_b930'
  sha256 '23570864f111c8eb610f61ad6cb35ed4a9f11cd9836a7c606d89ba87daf2f01b'

  # edovia.com is the official download host per the appcast feed
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8816
  url "http://download.edovia.com/screensconnect/screensconnect_#{version}.dmg"
  appcast 'https://screensconnect.com/sparkle/appcast.xml',
          checkpoint: '34a8603709c7b8d1eab7f39e99ff49bbe71172dcce5b8d6fe4edd543c224f3cc'
  name 'Screens Connect'
  homepage 'https://screensconnect.com'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  pkg 'Screens Connect.pkg'

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8833
  uninstall script:  {
                       executable:   'Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool',
                       must_succeed: false,
                     },
            pkgutil: 'com.edovia.pkg.screens.connect.*'
end
