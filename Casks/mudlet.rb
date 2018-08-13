cask 'mudlet' do
  version '3.11.1'
  sha256 '2376c197f352c45c351bb698d79fdc4d3fe085424263e1fdafb6e3617ae3184c'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
