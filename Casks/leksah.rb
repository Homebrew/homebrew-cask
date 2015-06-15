cask :v1 => 'leksah' do
  version '0.15.0.3-ghc-7.10.1'
  sha256 '4c622d4b676271e66d5df096481c9f619fc232dd2f9a96777ee4b50a93664a87'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
