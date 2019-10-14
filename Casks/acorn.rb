cask 'acorn' do
  version '6.5.1'
  sha256 '27fb9ada94110ce4e14f0bd7f3ec5f63e2b70af41d259e52ccc2f0be48d481ea'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
