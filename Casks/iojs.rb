cask :v1 => 'iojs' do
  version '1.4.3'
  sha256 '3577eb1dd8adcb9f25f30aa81e401b7fc1eabb69c9fb0b437dc9c59e3cfa67aa'

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
