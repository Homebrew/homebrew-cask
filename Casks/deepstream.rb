cask 'deepstream' do
  version '3.1.0'
  sha256 '210b14ae1460b7e5956313ad67d492846f997c77de2d760fcd436d0186827d85'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: 'a232cf01164ec7966d1e3849af6703ca936f4c04caaa5d707fbf09ea50547a8e'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
