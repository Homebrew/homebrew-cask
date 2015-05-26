cask :v1 => 'macaw' do
  version '1.5.14'
  sha256 '6aeb952b268966bd2c80269c76f4bed69cec6d5b347b75db9f63db3137995266'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => 'b455d7953282c8b41238420fb401a15e75526d4ab7a811d3c9a30739cb400b42'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
