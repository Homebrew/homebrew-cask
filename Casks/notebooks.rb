cask 'notebooks' do
  version :latest
  sha256 :no_check

  url 'https://www.notebooksapp.com/Download/Notebooks%20for%20Mac.dmg'
  name 'Notebooks'
  homepage 'http://www.notebooksapp.com/mac/'
  license :commercial

  app 'Notebooks.app'
end
