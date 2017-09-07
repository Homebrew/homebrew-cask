cask 'quodlibet' do
  version '3.9.1'
  sha256 '3f26a9ddd7659a3b29f9e04f522122ad077e900b2e30591404a649527254fbf4'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '07c8c61a85c2371138c696b28aa175857d84645a59d2a2d99dc9a73341d141ed'
  name 'Quod Libet'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap trash: '~/.quodlibet'
end
