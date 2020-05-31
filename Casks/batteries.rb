cask 'batteries' do
  version '2.0.1'
  sha256 '9b4ec9875d6977392c182a9032ebead5857713bf9f78f7e78df29a7d8c592c1f'

  # github.com/ronyfadel/BatteriesReleases was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg"
  appcast 'https://github.com/ronyfadel/BatteriesReleases/releases.atom'
  name 'Batteries'
  homepage 'https://www.fadel.io/batteries/'

  depends_on macos: '>= :mojave'

  app 'Batteries.app'
end
