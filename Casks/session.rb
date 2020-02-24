cask 'session' do
  version '1.0.2'
  sha256 'ca26d0041d68db64d74900d99d326589d14e5cef99a426f81b18758c05ab2249'

  # github.com/loki-project/session-desktop was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast 'https://github.com/loki-project/session-desktop/releases.atom'
  name 'Session'
  homepage 'https://getsession.org/'

  app 'Session.app'
end
