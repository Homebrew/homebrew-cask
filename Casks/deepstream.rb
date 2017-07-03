cask 'deepstream' do
  version '2.4.0'
  sha256 '53cde5333b3a32cc626467880bc45748f92a5543613ef3625100e31569c06e69'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: 'e018eef5240d2eaf2158a9c9dad2ba7d5bfe26d33a42762008f15b3bcb66d6aa'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
