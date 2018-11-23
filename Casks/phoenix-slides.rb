cask 'phoenix-slides' do
  version '1.4.3'
  sha256 'ef150da77dc578cfdaaf94fd7680d4b09107d3cdf217e71f7065eb02bf5be934'

  # github.com/gobbledegook/creevey was verified as official when first introduced to the cask
  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg"
  appcast 'https://github.com/gobbledegook/creevey/releases.atom'
  name 'Phoenix Slides'
  homepage 'https://blyt.net/phxslides/'

  app 'Phoenix Slides.app'
end
