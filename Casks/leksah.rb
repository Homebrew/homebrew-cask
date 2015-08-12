cask :v1 => 'leksah' do
  version '0.15.1.2-ghc-7.10.2'
  sha256 'fcf4d577981052df1a6b7a6a2dff6ee72a6d32509c5ac07abf5bf32bb0fff71c'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
