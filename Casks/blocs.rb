cask :v1 => 'blocs' do
  version :latest
  sha256 :no_check

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
