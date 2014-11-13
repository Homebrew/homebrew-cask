cask :v1 => 'platypus' do
  version '4.8'
  sha256 '754d9153b92e32faf7e56a4e181de59c6f0b72b3208663042a22e1767d87cb05'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          :sha256 => '21e37d2b32951108d7d0a4a6cda34b96bd97c4e82338c42583b6498c482239ec'
  homepage 'http://sveinbjorn.org/platypus'
  license :unknown

  app "Platypus-#{version}/Platypus.app"
end
