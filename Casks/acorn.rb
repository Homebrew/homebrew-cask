cask 'acorn' do
  version '6.2.1'
  sha256 'aba7f7fe9e85b44cc645740e795b9658751ae9515349b3122ab75e8d06ac39a5'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
