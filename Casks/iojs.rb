cask :v1 => 'iojs' do
  version '1.6.2'
  sha256 '52a6ca3697774c794fe85297152e0e6c4052e74e84a61d75a27eaeff11952d1d'

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
