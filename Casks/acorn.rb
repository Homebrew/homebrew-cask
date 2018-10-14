cask 'acorn' do
  version '6.2.2'
  sha256 'aadf0b8244b28b89723d1a421980f840647b384f11b5c6f7a95c02508f772306'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
