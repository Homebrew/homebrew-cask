cask :v1 => 'spotdox' do
  version :latest
  sha256 :no_check

  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml'
  homepage 'http://spotdox.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotdox.app'
end
