cask 'mudlet' do
  version '3.18.0'
  sha256 '9d48c2447c3f3f0d7523516358cb7e1ad188d30f3c7c6e0d5605551fb7b5d5c7'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
