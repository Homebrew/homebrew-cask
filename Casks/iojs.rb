cask :v1 => 'iojs' do
  version '1.0.2'
  sha256 'f60aba2bb30c899a9b1a5983d6e6afa57bfecd2fa2f8740924416a322722e60e'

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
