cask :v1 => 'screenflick' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/screenflick/downloads/Screenflick.zip'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          :sha256 => '2da4c7c5a2f954a6e205840f160e488729fe4a9f795c0b9543a2e92f17229a81'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
