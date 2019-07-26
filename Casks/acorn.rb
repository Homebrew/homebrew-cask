cask 'acorn' do
  version '6.5'
  sha256 '5287aa55c47e9076d43545b3d2ffdcb3e1ea08cec765dd6c9c432d5fdae95e3e'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
