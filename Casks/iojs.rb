cask :v1 => 'iojs' do
  version '1.7.1'
  sha256 'd4245734b7cc46924d5f3d6c21e273474e29420daa9afb9fd3a0e64375c56cc3'

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
