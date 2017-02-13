cask 'duplicati' do
  version '1.3.4'
  sha256 'd97065d012fb929fa4e37b5efab2d246b6aef667f892a95301a1271f704963f2'

  url "http://updates.duplicati.com/#{version.major_minor}.x/Duplicati%20#{version}.dmg"
  name 'Duplicati'
  homepage 'http://www.duplicati.com/'

  app 'Duplicati.app'
end
