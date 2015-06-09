cask :v1 => 'iojs' do
  version '2.2.1'
  sha256 '471c531417c21462b971bdc0bc6391721c3c24f1606b6a2fcba04c365e47f0d0'

  url "https://iojs.org/dist/v#{version}/iojs-v#{version}.pkg"
  name 'io.js'
  homepage 'https://iojs.org'
  license :oss

  pkg "iojs-v#{version}.pkg"

  uninstall :pkgutil => [
                         'com.nodesource.iojs.npm.pkg',
                         'com.nodesource.iojs.pkg'
                        ]

  conflicts_with :formula => 'iojs'
end
