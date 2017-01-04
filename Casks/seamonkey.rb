cask 'seamonkey' do
  version '2.46'
  sha256 '167ae1fa1cd84006d1c85991b983dc9c9d00463f45ac480a3d6d41436bcb6f59'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/en-US/SeaMonkey%20#{version}.dmg"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'

  app 'SeaMonkey.app'
end
