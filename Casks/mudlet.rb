cask 'mudlet' do
  version '3.19.0'
  sha256 '9ef29eb72aaa8e0380a6bf61d8399cc79eb91eeb21f30b3ee16d657a7d7d05d1'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
