cask :v1_1 => 'instacast' do
  version '2.0-2663'
  sha256 '643b36ea009e05e3881dc80899c7378a3fdcb23efc9c7fcdf98e5dc22b039776'

  url "http://assets.vemedio.com/software/instacast/Instacast-#{version}.dmg"
  name 'Instacast'
  appcast 'http://vemedio.com/appcast/instacast2',
          :sha256 => 'c7499b344c49f806e2b254e53cdff74f05b09d36a917e94204ead0700864435a'
  homepage 'http://vemedio.com/products/instacast-mac'
  license :commercial

  app 'Instacast.app'

  caveats do
    discontinued
  end
end
