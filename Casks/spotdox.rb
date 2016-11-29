cask 'spotdox' do
  version '1.6.0'
  sha256 '1fd03024a26761dfa0fb136db1f0702ae1471b20fc0740eb8d1565110c17dbb6'

  # spotdox.herokuapp.com was verified as official when first introduced to the cask
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml',
          checkpoint: '0fdc4883bc28017d4e6481f54196bed158d9105f3f70c790bc657499dfb55004'
  name 'Spotdox'
  homepage 'https://spotdox.com/'

  app 'Spotdox.app'
end
