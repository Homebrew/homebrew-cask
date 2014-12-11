cask :v1 => 'spotifree' do
  version :latest
  sha256 :no_check

  url 'http://spotifree.gordinskiy.com/files/Spotifree.dmg'
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  homepage 'http://spotifree.gordinskiy.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Spotifree.app'
end
