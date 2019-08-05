cask 'mudlet' do
  version '4.0.2'
  sha256 'bc6e7a0b7126e89252a1198ac40d55935277f7376f74734269398a2b9fa28461'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
