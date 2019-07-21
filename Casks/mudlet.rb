cask 'mudlet' do
  version '3.22.1'
  sha256 'cbd189c5c2612c96499ba076d5d75ea712807a562d3c5ff64e40fcda91c2fb6e'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
