cask 'mudlet' do
  version '4.1.2'
  sha256 '469da0feffb98059f17b20f4fa37401914647d33c0d313d0f4b8d836cf754f5b'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
