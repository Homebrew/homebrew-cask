cask 'macaw' do
  version '1.5.15'
  sha256 '678462f77c32afb203814c67cd69e6b56f0ed16a71ce264848afdb296c828059'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          checkpoint: 'd719d739a8fa56205acdfe1ee8a97e42f70a91cef6d73cc1aab78679a5ef9154'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
