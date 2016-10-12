cask 'remote-mouse' do
  version :latest
  sha256 :no_check

  url 'https://www.remotemouse.net/downloads/RemoteMouse.zip'
  name 'Remote Mouse'
  homepage 'https://www.remotemouse.net/'

  app 'Remote Mouse.app'
end
