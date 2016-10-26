cask 'nord-sound-manager' do
  version '6.86'
  sha256 '8d5881bcab0d2d7a4874686de08af27e6e71e8d9d2274f372f090383287e0e8b'

  url "http://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name 'Nord Sound Manager'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"
end
