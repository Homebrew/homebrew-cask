cask 'curio' do
  version :latest
  sha256 :no_check

  url 'https://zengobi.com/downloads/Curio.zip'
  appcast 'https://www.zengobi.com/appcasts/Curio12MarkdownAppcast.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  app 'Curio.app'
end
