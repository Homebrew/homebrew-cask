cask 'acorn' do
  version '6.2.0'
  sha256 '427f7aec4e0f058a49149f4348893d877c50e6e9ac2769ea0a18fc5db0e523e3'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
