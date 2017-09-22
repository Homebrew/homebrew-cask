cask 'deepstream' do
  version '3.0.1'
  sha256 '83ffa43ccf95ef2057870f5b6bf2bb9a60ef0fea4464d083fb163244b6877816'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: '894a5b3237f92e60c4ed15649085ff73acc117adf50fb21cadd0d723b54e73db'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: 'deepstream.io'

  caveats do
    files_in_usr_local
  end
end
