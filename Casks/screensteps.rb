cask 'screensteps' do
  version '4.0.108'
  sha256 '40678ddc531032950108e47976e9f54cd4e1660b22bfd4e5d16c06e15ac52c5b'

  # bluemangolearning.com was verified as official when first introduced to the cask
  url "https://www.bluemangolearning.com/download/screensteps/#{version.major_minor.dots_to_underscores}/beta/ScreenSteps.dmg"
  name 'ScreenSteps'
  homepage 'http://www.screensteps.com/'

  app 'ScreenSteps.app'
end
