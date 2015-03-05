cask :v1 => 'iojs' do
  version '1.0.4'
  sha256 '2dd50c88e0d97aab77ad2312dbb2294d4e3afe2c68eff35e7c51fdc99b3ec624'

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
