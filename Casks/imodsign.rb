cask 'imodsign' do
  version :latest
  sha256 :no_check

  url 'https://imzdl.com/iModSign/iModSign.zip'
  appcast 'https://imzdl.com/iModSign/appcast.xml',
          :checkpoint => '9e1817d65a5f1c55e0705b9119f2ca078a1a27cd5f6a3067c90fb14bf5e293aa'
  name 'iModSign'
  homepage 'https://imzdl.com'
  license :closed

  app 'iModSign.app'
end
