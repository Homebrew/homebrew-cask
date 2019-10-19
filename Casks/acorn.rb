cask 'acorn' do
  version '6.5.2'
  sha256 '44f4254fc7dd852e5f6c421e84cbb34696161e7d896b9813b5bbf2d459a00084'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
