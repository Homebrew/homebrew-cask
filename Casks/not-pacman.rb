cask :v1 => 'not-pacman' do
  version '1004'
  sha256 '4a2c4d84ad713f505a89a14eea5184e76ea5378eb08698da41afc6c4021ead13'

  url "http://stabyourself.net/dl.php?file=notpacman-#{version}/notpacman-osx.zip"
  homepage 'http://stabyourself.net/notpacman/'
  license :oss

  app 'Not Pacman.app'
end
