cask 'stepmania' do
  version '5.0.7rc'
  sha256 '566adc7e5a9b05d8212b738ca7e6e410884e21aaae503e65f8a7ec78ae3d4156'

  url "https://github.com/stepmania/stepmania/releases/download/v#{version}/StepMania-#{version}-mac.dmg"
  name 'StepMania'
  homepage 'http://www.stepmania.com/'
  license :mit

  app "StepMania-#{version}/Stepmania.app"
end
