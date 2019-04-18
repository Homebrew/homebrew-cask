cask 'crypho' do
  version '4.1.5'
  sha256 'a7b938eed0f90aa02967318cdb60843b30c0738f92d1bb18b77cc3777e6ae686'

  url "https://www.crypho.com/downloads/desktop/Crypho-#{version}.dmg"
  appcast 'https://www.crypho.com/download/'
  name 'Crypho'
  homepage 'https://www.crypho.com/'

  app 'Crypho.app'
end
