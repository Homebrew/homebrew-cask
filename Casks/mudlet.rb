cask 'mudlet' do
  version '3.9.0'
  sha256 '5a412ab29a0d5910149a7c846ee19ac45731f34f6089e01359f8223e33272154'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '0efaee2ba1dfb0f32be73bc6d6bd6e3ac58a67e9f92ad3b0faecd419ac2630f5'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
