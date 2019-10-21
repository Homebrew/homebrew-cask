cask 'mudlet' do
  version '4.2.1'
  sha256 'b939a058fa5bc5631fcce7d413dd15606c333f3920c5a1a6efb1eb2ed7b54293'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
