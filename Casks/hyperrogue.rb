cask 'hyperrogue' do
  version '11.3a'
  sha256 'f6829a1ad8e640c39f99bd164ead9d70e6dc24879cf9c5b4d542ce07f6324ffd'

  url "https://roguetemple.com/z/hyper/hyperrogue-#{version.tr('.', '')}.dmg"
  appcast 'https://github.com/zenorogue/hyperrogue/releases.atom'
  name 'HyperRogue'
  homepage 'https://roguetemple.com/z/hyper.php'

  app 'HyperRogue.app'
end
