cask 'deepstream' do
  version '3.1.5'
  sha256 'a22cc87c6639b626d8dd390e9af6bb05d88fb6c61b0d67d607fb9ee7f3a3b0b2'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom'
  name 'deepstream'
  homepage 'https://deepstreamhub.com/open-source/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
