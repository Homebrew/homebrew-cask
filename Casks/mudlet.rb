cask 'mudlet' do
  version '4.4.0'
  sha256 '89cfcc8ea605fbd6c0220c514cb5a1dad04ac2052a070bc0f7b39fb17023aceb'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
