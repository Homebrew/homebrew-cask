cask 'acorn' do
  version '6.0.4'
  sha256 :no_check

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '33b181f83680dc40fe97173807902171b6d1cf0120fe3578af43d31114e7497e'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
