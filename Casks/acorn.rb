cask 'acorn' do
  version '6.0.0'
  sha256 '7055f6adbe1a79ecb69e56a17cb80b1fa716f8912e1af897fc47da3de89baa71'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '18ed12d347573eae5fef0365cca9b19fdc5fd89c3de3b7ecbd4a47184276e537'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
