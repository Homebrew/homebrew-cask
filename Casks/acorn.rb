cask 'acorn' do
  version '6.6.1'
  sha256 'b2d9fe087a585fbcf00ff593d4348e373ec7985ed68b138afd9ed12486af9602'

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
