cask 'deepstream' do
  version '3.0.0'
  sha256 'aa58555ff79d63db05d3b11944903af365551e06958c1eae932bb33de69b2f40'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: '7a21c27360fecf2d2001b02b3a9049d304dfa61f44497936f095530f362aff05'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
