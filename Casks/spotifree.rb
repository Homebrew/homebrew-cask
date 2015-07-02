cask :v1 => 'spotifree' do
  version '1.6.3'
  sha256 'f58ee878dcadaffb4934793b78ef65d1dd0d32cf078d61f6178ab0531c7340e7'

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/ArtemGordinsky/Spotifree/releases/download/1.6.3/Spotifree.dmg'
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  name 'Spotifree'
  homepage 'http://spotifree.gordinskiy.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spotifree.app'
end
