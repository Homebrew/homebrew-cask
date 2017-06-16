cask 'acorn' do
  version '5.6.5'
  sha256 '6209061f5c0b443bca6061644a92553d71e15c2e8be59ba6ad4dbafb5000c747'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'c867ac62b7ddd8e1903123feabe869a3960ac1d696caed0ee108ac145122acce'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
