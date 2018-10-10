cask 'screensteps' do
  version '4.0.9'
  sha256 'e2ebd4b495d40f4461ea2c878ab48ca22a83634c929a35ec9a4a000e034435d8'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major_minor.dots_to_underscores}/release/ScreenSteps.dmg"
  name 'ScreenSteps'
  homepage 'https://www.screensteps.com/'

  app 'ScreenSteps.app'
end
