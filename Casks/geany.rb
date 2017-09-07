cask 'geany' do
  version '1.31'
  sha256 'ccc4eb540c2f1ea0d8af62efcd91a63f37c523b428ec9185e5e0edf5a7b836c5'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom',
          checkpoint: '715c1e046317b3353e7c62f889193387b1a4b754d26e7dc51b158c83c575eff3'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
