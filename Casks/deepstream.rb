cask 'deepstream' do
  version '2.4.0'
  sha256 '3b4a03a560373493859802b0a802331ddc91fe95bd51bdfa26baa882d2967b8e'

  # github.com/deepstreamIO/deepstream.io was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast 'https://github.com/deepstreamIO/deepstream.io/releases.atom',
          checkpoint: 'e018eef5240d2eaf2158a9c9dad2ba7d5bfe26d33a42762008f15b3bcb66d6aa'
  name 'deepstream'
  homepage 'https://deepstream.io/'

  pkg "deepstream.io-mac-#{version}.pkg"
end
