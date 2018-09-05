cask 'screensteps' do
  version '4.0.9'
  sha256 'aeebc28a6e29914f99679a3198cb3a1701a98df909ede0ba49205407b3b85e23'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major_minor.dots_to_underscores}/release/ScreenSteps.dmg"
  name 'ScreenSteps'
  homepage 'http://www.screensteps.com/'

  app 'ScreenSteps.app'
end
