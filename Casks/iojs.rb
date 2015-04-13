cask :v1 => 'iojs' do
  version '1.6.3'
  sha256 '28df7ee0e2a180155ff1dbc5ee8cb16557e84a37e9eb6e744a4404f92b7fccc5'

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
