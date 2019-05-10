cask 'crypho' do
  version '4.1.7'
  sha256 'd4f5269f27096e86a4a4e57031417f5b9284538d21e4ed8b5a37d4e72b3a9162'

  url "https://www.crypho.com/downloads/desktop/Crypho-#{version}.dmg"
  appcast 'https://www.crypho.com/download/'
  name 'Crypho'
  homepage 'https://www.crypho.com/'

  app 'Crypho.app'
end
