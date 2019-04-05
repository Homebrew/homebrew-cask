cask 'notebooks' do
  version '1.4.5'
  sha256 '11571a75a89ba5aac2f846e95e3d3520d3c47b034b8df2166e93d98a7dde310a'

  url 'https://notebooksapp.com/Download/Notebooks.zip'
  appcast 'https://www.notebooksapp.com/NBMacAppcast.xml'
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
