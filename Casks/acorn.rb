cask 'acorn' do
  version '6.1.3'
  sha256 'c465dcbc81dca03ef8a775114b90884a2354086ec7441dde579e0d0a5ea06d7f'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
