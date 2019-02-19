cask 'mudlet' do
  version '3.17.1'
  sha256 '63b8bdec97798cea700a36052d4e8a0ed711d19ea33cc6737b0c93662fea9522'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
