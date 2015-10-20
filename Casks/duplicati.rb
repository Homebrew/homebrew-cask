cask :v1 => 'duplicati' do
  version '1.3.4'
  sha256 'd97065d012fb929fa4e37b5efab2d246b6aef667f892a95301a1271f704963f2'

  # googlecode.com is the official download host per the vendor homepage
  url "https://duplicati.googlecode.com/files/Duplicati%20#{version}.dmg"
  name 'Duplicati'
  homepage 'http://www.duplicati.com/'
  license :oss

  app 'Duplicati.app'
end
