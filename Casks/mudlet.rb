cask 'mudlet' do
  version '3.22.0'
  sha256 'ebf6c62568d448fbcfe793c003804c761ea0e2d1ecf8e03ef907ed48c58b4603'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
