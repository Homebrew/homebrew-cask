cask 'acorn' do
  version '6.3.3'
  sha256 'b6bc5e49967af165249f1f7ae03c1e0edaa1f21c04ac7ad6ad7e5813a13b0749'

  url 'https://flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
