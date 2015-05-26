cask :v1 => 'iojs' do
  version '2.0.2'
  sha256 '2f23cc7fcb9ccad0a3e2d127fd231c7d5479a561a3d99976a5fe30bb8ce90df4'

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
