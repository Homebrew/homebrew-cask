cask 'screensteps' do
  version '4.0.106'
  sha256 '992fd72ff00294180bc0dff8d6d520313069fe0e1307a15a3b7e4939b6fbd3eb'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major_minor.dots_to_underscores}/release/ScreenSteps.dmg"
  name 'ScreenSteps'
  homepage 'http://www.screensteps.com/'

  app 'ScreenSteps.app'
end
