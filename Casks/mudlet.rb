cask 'mudlet' do
  version '4.9.0'
  sha256 '62a9f58040f621bc5b64f02b23f19362d95c1223708f358df00ac69340fda4f0'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
