cask :v1 => 'spotdox' do
  version :latest
  sha256 :no_check

  # herokuapp.com is the official download host per the vendor homepage
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml'
  name 'Spotdox'
  homepage 'https://spotdox.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotdox.app'
end
