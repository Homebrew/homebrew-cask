cask 'duplicati' do
  version '1.3.4'
  sha256 'd97065d012fb929fa4e37b5efab2d246b6aef667f892a95301a1271f704963f2'

  url "http://updates.duplicati.com/#{version.major_minor}.x/Duplicati%20#{version}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '5b228522bece130f042464271a9a9d49febd1e6935f9642653c12666d870af07'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
