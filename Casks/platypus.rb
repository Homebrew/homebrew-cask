cask 'platypus' do
  version '5.0'
  sha256 'a14c9f2360feff9f07d5db5eeee238fbc602dccf574c3ebd1ce875fede43bdb1'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          checkpoint: 'f914f92e7f1f83a2d1d3e5e7e53a4aa8b5c54acc454c223415d5705e04f45f15'
  name 'Platypus'
  homepage 'http://sveinbjorn.org/platypus'
  license :bsd

  app "Platypus-#{version}/Platypus.app"
end
