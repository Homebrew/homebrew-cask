cask :v1 => 'spotifree' do
  version :latest
  sha256 :no_check

  url 'http://spotifree.gordinskiy.com/files/Spotifree.dmg'
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  homepage 'http://spotifree.gordinskiy.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotifree.app'
end
