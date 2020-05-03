cask 'mudlet' do
  version '4.8.0'
  sha256 '7fc91e6a5a9d5728a3df0f4fa495ecf2afc8cd0d0b5931cbd821eb2ace2dd47f'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
