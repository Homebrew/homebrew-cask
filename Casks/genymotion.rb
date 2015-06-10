cask :v1 => 'genymotion' do
  version '2.4.0'
  sha256 'e0ad68b084474da3d8fa5ffdc828149fcf6b2c6d021c3acc7b3ad3a55831a38a'

  depends_on :cask => 'virtualbox'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
end
