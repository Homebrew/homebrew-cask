cask :v1 => 'iojs' do
  version '1.6.1'
  sha256 '76dc162dc632b43daaedd0e1339f2f000f7cfe0c8a307b86427c1cc8f5b4f0c6'

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
