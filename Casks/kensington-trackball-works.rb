cask 'kensington-trackball-works' do
  version '1.3'
  sha256 '6c2271211f71fc80e237dad2a86f253b408e985d5aea58e574ac89f54e4ce1fc'

  # windows.net is the official download host per the vendor homepage
  url 'https://accoblobstorageus.blob.core.windows.net/software/38c915e6-ca92-406e-bd65-84e9692d4493.dmg'
  name 'Kensington TrackballWorks'
  homepage 'http://www.kensington.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Kensington TrackballWorks.pkg'

  uninstall pkgutil:   'com.kensington.trackballworks.driver.installer',
            kext:      'com.kensington.trackballworks.driver',
            launchctl: [
                         'com.kensington.slimblade.agent',
                         'com.kensington.slimblade.guiagent.plist',
                       ],
            quit:      'com.kensington.trackballworks.helper'
end
