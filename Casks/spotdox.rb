cask 'spotdox' do
  version '1.6.0'
  sha256 '1fd03024a26761dfa0fb136db1f0702ae1471b20fc0740eb8d1565110c17dbb6'

  # herokuapp.com is the official download host per the vendor homepage
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml',
          :sha256 => '85f5ae67e941460449989575db1e977c78c34c7eff2e8519aac092518449e4ff'
  name 'Spotdox'
  homepage 'https://spotdox.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotdox.app'
end
