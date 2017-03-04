cask 'semulov' do
  version '2.2'
  sha256 '8453c28ba46fa2122ba52dbb1d16fe3dc2dc7268c7629f7feb249f221c001c0a'

  url 'https://www.kainjow.com/downloads/Semulov.zip'
  appcast 'https://kainjow.com/updates/semulov.xml',
          checkpoint: '7bddcc2c76ef94366112266d6163429a022385c8609a7e196e5230a928cc32f5'
  name 'Semulov'
  homepage 'https://www.kainjow.com/'

  app 'Semulov.app'
end
