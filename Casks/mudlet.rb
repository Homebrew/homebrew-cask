cask 'mudlet' do
  version '4.6.2'
  sha256 '82b1fb21c3b9f12cc5e9814a05ca55160fd130456d44d9929b9af00a0f61f189'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
