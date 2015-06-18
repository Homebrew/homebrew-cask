cask :v1 => 'blocs' do
  version :latest
  sha256 :no_check

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  name 'Blocs'
  appcast 'https://uistore.io/blocs/info.xml',
          :sha256 => '42e6c855cf37dad70f357a117b08eb02b6c3c165c99f73caa9f9e814505ef8dc'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
