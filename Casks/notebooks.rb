cask 'notebooks' do
  version '1.4.3'
  sha256 'e71889f63548ab7d255ccfe75f4eef7750f4959b70f1e80c1c023a004d3d7fb6'

  url 'https://notebooksapp.com/Download/Notebooks.zip'
  appcast 'https://www.notebooksapp.com/NBMacAppcast.xml'
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
