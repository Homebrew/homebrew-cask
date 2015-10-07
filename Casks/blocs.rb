cask :v1 => 'blocs' do
  version :latest
  sha256 :no_check

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  name 'Blocs'
  appcast 'https://uistore.io/blocs/info.xml',
          :sha256 => '480567f3ba2119503401f1308ebb118ab19204245e8068133f5f3423c642fbfd'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
