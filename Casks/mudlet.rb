cask 'mudlet' do
  version '3.9.0'
  sha256 '5a412ab29a0d5910149a7c846ee19ac45731f34f6089e01359f8223e33272154'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
