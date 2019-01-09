cask 'acorn' do
  version '6.3'
  sha256 '531f88a4c8eeebdc4ee8a014c5186db07a8dbb18a2b5ff10f3b46d31dc0bcbb5'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
