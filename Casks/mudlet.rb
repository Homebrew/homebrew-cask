cask 'mudlet' do
  version '4.5.1'
  sha256 '1bf708548a88f63c29994071c5d24000420038a41d41650fb57055da862068e7'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
