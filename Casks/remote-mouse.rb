cask 'remote-mouse' do
  version :latest
  sha256 :no_check

  url 'http://www.remotemouse.net/downloads/RemoteMouse.zip'
  name 'Remote Mouse'
  homepage 'http://www.remotemouse.net'
  license :closed

  app 'Remote Mouse.app'
end
