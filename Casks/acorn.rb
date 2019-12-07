cask 'acorn' do
  version '6.5.3'
  sha256 '11dd7f576c20becd12bd15392e1805b7862b15803aac0933ed69b2a315b923c0'

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
