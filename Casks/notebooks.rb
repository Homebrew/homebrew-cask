cask 'notebooks' do
  version :latest
  sha256 :no_check

  url 'https://www.notebooksapp.com/Download/Notebooks%20for%20Mac.dmg'
  appcast 'https://www.notebooksapp.com/NBMacAppcast.xml'
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
