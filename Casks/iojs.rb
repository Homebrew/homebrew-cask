cask :v1 => 'iojs' do
  version '1.6.0'
  sha256 'd1e47121d1434ded8949b393fe53c191c256e67a072dcc9c492577f24611b75b'

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
