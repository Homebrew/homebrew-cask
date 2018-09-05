cask 'deepstream' do
  version '3.1.3'
  sha256 'c690d1374028bb7fbb3d000bac64176e0cc93a50b15909d186e77ab0a154f055'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
