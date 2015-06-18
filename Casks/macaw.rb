cask :v1 => 'macaw' do
  version '1.5.15'
  sha256 '678462f77c32afb203814c67cd69e6b56f0ed16a71ce264848afdb296c828059'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => 'b455d7953282c8b41238420fb401a15e75526d4ab7a811d3c9a30739cb400b42'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
