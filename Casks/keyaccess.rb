cask 'keyaccess' do
  version :latest
  sha256 :no_check

  url 'http://www.sassafras.com/links/K2Client.pkg'
  name 'Sassafras KeyAccess KeyServer Client'
  name 'K2 Client'
  homepage 'http://www.sassafras.com/support/'
  license :gratis

  pkg 'K2Client.pkg'

  uninstall pkgutil:   [
                         'com.sassafras.pkg.KeyAccess',
                         'com.sassafras.pkg.KeyAccessPref',
                         'com.sassafras.pkg.KeyCheckout',
                         'com.sassafras.pkg.KeyVerify',
                       ],
            quit:      [
                         'com.sassafras.KeyAccess',
                         'com.sassafras.KeyAccess.kass',
                       ],
            launchctl: [
                         'com.sassafrass.KeyAccess.agent',
                         'com.sassafrass.KeyAccess.daemon',
                       ],
            delete:    [
                         '/Library/Preferences/com.sassafras.KeyAccess.plist',
                         '/Library/Preferences/com.sassafras.install.plist',
                         '/Library/Preferences/KeyAccess',
                       ],
            rmdir:     [
                         '/Library/Java/Extensions',
                         '/Library/Java',
                       ]
end
