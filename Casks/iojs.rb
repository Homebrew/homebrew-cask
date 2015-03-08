cask :v1 => 'iojs' do
  version '1.5.0'
  sha256 '70212860f3e5695fc52623833d0e51564f295104d3e93255fc25d1a1d9dcc2c3'

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
