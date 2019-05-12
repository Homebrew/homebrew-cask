cask 'crypho' do
  version '4.1.8'
  sha256 'f8e5d7ed52984a3ddaa1477ffca2a00f208111de7e76139041615be286be9b2b'

  url "https://www.crypho.com/downloads/desktop/Crypho-#{version}.dmg"
  appcast 'https://www.crypho.com/download/'
  name 'Crypho'
  homepage 'https://www.crypho.com/'

  app 'Crypho.app'
end
