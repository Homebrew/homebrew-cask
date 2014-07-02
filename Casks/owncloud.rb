class Owncloud < Cask
  version '1.6.1.359'
  sha256 '225ca73e3d57a56c68ba28cc9ea47aa7eb7f5abc00841528d5ee3f8a371fb0d3'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.dmg"
  homepage 'http://owncloud.com'

  link 'owncloud.app'
end
