cask :v1_1 => 'instacast' do
  version '2.0-2663'
  sha256 '643b36ea009e05e3881dc80899c7378a3fdcb23efc9c7fcdf98e5dc22b039776'

  url "http://assets.vemedio.com/software/instacast/Instacast-#{version}.dmg"
  name 'Instacast'
  appcast 'http://vemedio.com/appcast/instacast2',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://vemedio.com/products/instacast-mac'
  license :commercial

  app 'Instacast.app'

  caveats do
    discontinued
  end
end
