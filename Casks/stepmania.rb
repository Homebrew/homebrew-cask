cask 'stepmania' do
  version '5.0.10'
  sha256 '7e852089ff4cb13217e4a8debb76b1bffb3d8ff6ca31c903ff768577742b50a0'

  url "https://github.com/stepmania/stepmania/releases/download/v#{version}/StepMania-#{version}-mac.dmg"
  name 'StepMania'
  homepage 'http://www.stepmania.com/'
  license :mit

  app "StepMania-#{version}/Stepmania.app"
end
