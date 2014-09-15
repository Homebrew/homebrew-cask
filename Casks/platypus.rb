class Platypus < Cask
  version '4.8'
  sha256 '754d9153b92e32faf7e56a4e181de59c6f0b72b3208663042a22e1767d87cb05'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml'
  homepage 'http://sveinbjorn.org/platypus'

  app "Platypus-#{version}/Platypus.app"
end
