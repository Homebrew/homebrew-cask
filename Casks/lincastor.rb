cask 'lincastor' do
  version '1.4'
  sha256 'fbe3af69e932cebdd0ddb76460018a4cc9194d60bb9476c2a42c2ccf59bdbba2'

  # dropbox.com/s/43fuhic0mhvhb6f was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/43fuhic0mhvhb6f/LinCastor.zip?dl=1'
  appcast 'https://onflapp.appspot.com/lincastor'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  app 'LinCastor.app'
end
