cask 'screensteps' do
  version '4.0.106'
  sha256 '6fad22899e703f89d5dd2dbcdfdd83fbaebdcaa83ccb04da2280cfb4279c7a92'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major_minor.dots_to_underscores}/release/ScreenSteps.dmg"
  name 'ScreenSteps'
  homepage 'http://www.screensteps.com/'

  app 'ScreenSteps.app'
end
