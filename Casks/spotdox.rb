cask 'spotdox' do
  version '1.6.0'
  sha256 '1fd03024a26761dfa0fb136db1f0702ae1471b20fc0740eb8d1565110c17dbb6'

  # herokuapp.com is the official download host per the vendor homepage
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml',
          :checkpoint => '490eb6f9ca809b303cb583d7050ae0bba2006f98e839a1df249eda766a7d5d24'
  name 'Spotdox'
  homepage 'https://spotdox.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotdox.app'
end
