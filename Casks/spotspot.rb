cask 'spotspot' do
  version '3.3.0'
  sha256 '789f98df894c4896f24bac349f3ece7a24a50af2d31bf5fd9ab35de89a384090'

  # github.com/will-stone/SpotSpot/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/SpotSpot/releases/download/v#{version}/SpotSpot-#{version}.dmg"
  appcast 'https://github.com/will-stone/SpotSpot/releases.atom'
  name 'SpotSpot'
  homepage 'https://will-stone.github.io/SpotSpot/'

  app 'SpotSpot.app'
end
