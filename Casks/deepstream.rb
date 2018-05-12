cask 'deepstream' do
  version '4.0.0-rc.4'
  sha256 'f170b2839f87b0b072068cdf7c70a100f272ee0e1f987ec61d25aaeab6078307'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: '740faa1e9e1e08e3b25c7b5ac43838f1880faaaa46db12b45275935c9dfc02a8'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
