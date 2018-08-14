cask 'nord-sound-manager' do
  version '7.32'
  sha256 '5711ec67216c421cd5e2c69e60846aafbfab7f682f3b80dff160de93bf933377'

  url "http://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name 'Nord Sound Manager'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"
end
