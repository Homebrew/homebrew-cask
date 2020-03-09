cask 'mudlet' do
  version '4.6.0'
  sha256 'c9ec4c4b27b3f138970119d152763445b0c18c0542b3278629467cbbd7b47549'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
