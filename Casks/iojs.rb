cask 'iojs' do
  version '3.3.1'
  sha256 'b440c0f48fc8a435f2af6793a8e9c2ce1b9d2d4912d8a268b9c17c872fda10ba'

  url "https://iojs.org/dist/v#{version}/iojs-v#{version}.pkg"
  appcast 'https://iojs.org/dist/latest/',
          checkpoint: '7fd29711bfd040011093143752f10dfe7b4e5b631df8dba5b18b85b0f6677025'
  name 'io.js'
  homepage 'https://iojs.org/'

  conflicts_with formula: 'iojs'

  pkg "iojs-v#{version}.pkg"

  uninstall pkgutil: [
                       'com.nodesource.iojs.npm.pkg',
                       'com.nodesource.iojs.pkg',
                     ]
end
