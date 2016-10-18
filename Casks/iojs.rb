cask 'iojs' do
  version '2.4.0'
  sha256 '7d842eb47b4208f8eb1e9fd7d34e8c1d8b5cde70ba731c2d7565c76f2629b98f'

  url "https://iojs.org/dist/v#{version}/iojs-v#{version}.pkg"
  name 'io.js'
  homepage 'https://iojs.org'

  conflicts_with formula: 'iojs'

  pkg "iojs-v#{version}.pkg"

  uninstall pkgutil: [
                       'com.nodesource.iojs.npm.pkg',
                       'com.nodesource.iojs.pkg',
                     ]
end
