cask 'phoenix-slides' do
  version '1.4.4'
  sha256 'f27bb747a822e8b39eae81a6fe426692624d209cf7a50b98bdd5331bd451fdb9'

  # github.com/gobbledegook/creevey was verified as official when first introduced to the cask
  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg"
  appcast 'https://github.com/gobbledegook/creevey/releases.atom'
  name 'Phoenix Slides'
  homepage 'https://blyt.net/phxslides/'

  app 'Phoenix Slides.app'
end
