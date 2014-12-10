cask :v1 => 'kensington-trackball-works' do
  version '1.1.2'
  sha256 '02e3fed2fe01c234206d3fcf2c85f71f10aa2a3bc3d3dd6f4694ac41b725e3df'

  url 'http://accoblobstorageus.blob.core.windows.net/software/38c5e777-b2ef-4434-8091-6290cb41fc16.dmg'
  homepage 'http://www.kensington.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Kensington TrackballWorks.pkg'

  uninstall :pkgutil   => 'com.kensington.trackballworks.driver.installer',
            :kext      => 'com.kensington.trackballworks.driver',
            :launchctl => [
                           'com.kensington.slimblade.agent',
                           'com.kensington.slimblade.guiagent.plist',
                          ],
            :quit      => 'com.kensington.trackballworks.helper'
end
