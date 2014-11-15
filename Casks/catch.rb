cask :v1 => 'catch' do
  version '1.8'
  sha256 '0fd58d79ba869583406b7aa9ed707e4c77480417da9f09805f1497098fbbb138'

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://raw.github.com/mipstian/catch/master/update/appcast.xml',
          :sha256 => 'd559363812ead3090bf597711821d4e47dd281e7695f4e377767fffd56637a2d'
  homepage 'http://www.giorgiocalderolla.com/index.html'
  license :oss

  app 'Catch.app'
end
