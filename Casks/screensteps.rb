cask 'screensteps' do
  version '4.1.0'
  sha256 'b5f6b526ba05e520db71316fc6aa43d7d457794f69c0f8e5e7db09a8c9b86230'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major}_0/release/ScreenSteps.dmg"
  appcast 'https://www.screensteps.com/downloads'
  name 'ScreenSteps'
  homepage 'https://www.screensteps.com/'

  app 'ScreenSteps.app'
end
