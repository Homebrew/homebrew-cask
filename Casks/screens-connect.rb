cask 'screens-connect' do
  version '3.6.1'
  sha256 '18bb65623aadff7f931456598f12ba33f5c54bad9c1f7f2a3b10f9585f8bc771'

  # evodia.com was verified as official when first introduced to the cask
  url "http://download.edovia.com/screensconnect/screensconnect%20#{version}.dmg"
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
