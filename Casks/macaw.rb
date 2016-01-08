cask 'macaw' do
  version '1.5.15'
  sha256 '678462f77c32afb203814c67cd69e6b56f0ed16a71ce264848afdb296c828059'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => '89c8f4d9ac4f0dcbf29893de75bdf1bb0c60220280c60e4547d62a8b43300112'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
