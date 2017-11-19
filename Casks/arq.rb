cask 'arq' do
  version '5.9.7'
  sha256 'eb16122ff0d7e18a59241840372f82e4246c51e4b2a4fe3b44361fad4b4d700d'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '50c6f265ae3afb50177d3a9ef8c60df1cff87ab1329db3cc0094d99a7914b41d'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
