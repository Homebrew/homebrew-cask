cask 'mudlet' do
  version '3.21.0'
  sha256 '56969a16a191d7a6ae34893d65265b785f9c887790f7c87247fe766e5b9aa0c3'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
