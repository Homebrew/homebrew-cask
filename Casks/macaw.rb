cask 'macaw' do
  version '1.5.15'
  sha256 '678462f77c32afb203814c67cd69e6b56f0ed16a71ce264848afdb296c828059'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => 'ef754c41ddbf8942bcad85c9a00212f87a18e9f724184ee776992f911ac16ebf'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
