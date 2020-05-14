cask 'mudlet' do
  version '4.8.2'
  sha256 '54af3461a97a159892f7c75cb845b71703713e3d02d22ef5a5cd48254d6c64e1'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
