cask :v1 => 'spotdox' do
  version :latest
  sha256 :no_check

  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml'
  homepage 'http://spotdox.com/get-started/'
  license :unknown

  app 'Spotdox.app'
end
