cask 'session' do
  version '1.0.1'
  sha256 'b000ad8255ed81d39e106aa9f7925715086a0c284e8c9bde72cf513861e8362c'

  # github.com/loki-project/session-desktop was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast 'https://github.com/loki-project/session-desktop/releases.atom'
  name 'Session'
  homepage 'https://getsession.org/'

  app 'Session.app'
end
