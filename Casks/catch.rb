cask :v1 => 'catch' do
  version '1.9.1'
  sha256 'f9aded779d56f679fc638a6a31b2cf1a1f1e00c9aeaca931c3eca656feb53d41'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://raw.github.com/mipstian/catch/master/update/appcast.xml',
          :sha256 => 'd559363812ead3090bf597711821d4e47dd281e7695f4e377767fffd56637a2d'
  homepage 'http://www.giorgiocalderolla.com/index.html#catch'
  license :oss

  app 'Catch.app'
end
