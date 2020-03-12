cask 'mudlet' do
  version '4.6.1'
  sha256 '0b3fec5bfa3784754dd46773083c9d51fc64d4cc6d3fbdcfa5e0f48dbe7befd0'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
