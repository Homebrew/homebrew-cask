cask 'mudlet' do
  version '4.3.0'
  sha256 '01f46cb34ae572e5d61578b0bd80ceec09b4a4df143ab63b421008d9d3063e49'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
