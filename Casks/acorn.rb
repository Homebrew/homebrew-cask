cask 'acorn' do
  version '6.3.2'
  sha256 '54a50ea516da3f64c01d2d5a5d462977c14202e43ae286186901fb65c5ed42f0'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
