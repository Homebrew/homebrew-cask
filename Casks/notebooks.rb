cask 'notebooks' do
  version '1.4.4'
  sha256 'c16902d821adfcc26ece070a813423ffe5d61c7793ba55160be40a8b4716bf4b'

  url 'https://notebooksapp.com/Download/Notebooks.zip'
  appcast 'https://www.notebooksapp.com/NBMacAppcast.xml'
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
