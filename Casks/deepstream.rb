cask 'deepstream' do
  version '3.1.1'
  sha256 '652fdb2c19ffba27cf455cb0b3f8919afe0ba7572bf8558e247e5e45b20fba04'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: '6791a562a7593bb0f3cddc9b08dc52b923628031f663679c5e5b47f39d580531'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
