cask :v1 => 'boxer' do
  version :latest
  sha256 :no_check

  url 'http://boxerapp.com/download/latest'
  appcast 'http://boxerapp.com/appcast'
  homepage 'http://boxerapp.com/'
  license :gpl

  app 'Boxer.app'
end
