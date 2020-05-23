cask 'g-desktop-suite' do
  version '0.3.1'
  sha256 'a4341e5bf56cba3ca91d64de58a78232a94c55a66739d42e0260f98d413b6340'

  url "https://github.com/alexkim205/g-desktop-suite/releases/latest/download/G-Desktop-Suite-#{version}.dmg"
  appcast 'https://github.com/alexkim205/g-desktop-suite/releases.atom'
  name 'G Desktop Suite'
  homepage 'https://github.com/alexkim205/g-desktop-suite'

  app 'G Desktop Suite.app'
end
