cask :v1 => 'kensington-trackball-works' do
  version '1.2.0'
  sha256 '11c67355484bb55e2a2aca33f40fa8294612aa70a0be21a1da18d4cbc6816975'

  # windows.net is the official download host per the vendor homepage
  url 'http://accoblobstorageus.blob.core.windows.net/software/b54b0855-21e0-4cfa-a084-2b62e6f4aa93.dmg'
  name 'Kensington TrackballWorks'
  homepage 'http://www.kensington.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Kensington TrackballWorks.pkg'

  uninstall :pkgutil   => 'com.kensington.trackballworks.driver.installer',
            :kext      => 'com.kensington.trackballworks.driver',
            :launchctl => [
                           'com.kensington.slimblade.agent',
                           'com.kensington.slimblade.guiagent.plist',
                          ],
            :quit      => 'com.kensington.trackballworks.helper'
end
