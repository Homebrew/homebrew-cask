class Owncloud < Cask
  version '1.6.3.878'
  sha256 'ab70a5964071f40c8619429ebde212486e894ca198dd2fbd6148a9c2c2d75990'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.dmg"
  homepage 'http://owncloud.com'

  app 'owncloud.app'
end
