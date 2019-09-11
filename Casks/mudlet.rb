cask 'mudlet' do
  version '4.1.1'
  sha256 '4abdc2af15530fcc1422b102f91bb006bc82b8e725ec3ae71abc241395e912a2'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
