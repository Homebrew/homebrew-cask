cask 'mudlet' do
  version '4.2.0'
  sha256 '615fab9473cc0752bac0dfae33e29f80ce8ba9d74fc28275aa0c24906a1b67ff'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
