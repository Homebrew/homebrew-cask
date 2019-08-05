cask 'mudlet' do
  version '4.0.1'
  sha256 '1409c6fb26aded2e1dbacce2c788e8927672339599404da7a4935a4648f965a7'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
