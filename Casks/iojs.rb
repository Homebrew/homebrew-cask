cask :v1 => 'iojs' do
  version '1.7.1'
  sha256 '00b1c1bc679aa909a6a2c1ea3b46155a7befe4006a6b5e0371bc957b234979df'

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
