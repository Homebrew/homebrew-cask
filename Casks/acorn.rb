cask 'acorn' do
  version '6.2.3'
  sha256 '0be478b51f70a3667e12c8a5db56c63defd6f6f2947cb87b3622a063e3351837'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
