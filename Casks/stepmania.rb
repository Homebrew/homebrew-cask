cask 'stepmania' do
  version '5.0.10'
  sha256 '7e852089ff4cb13217e4a8debb76b1bffb3d8ff6ca31c903ff768577742b50a0'

  # github.com/stepmania/stepmania was verified as official when first introduced to the cask
  url "https://github.com/stepmania/stepmania/releases/download/v#{version}/StepMania-#{version}-mac.dmg"
  appcast 'https://github.com/stepmania/stepmania/releases.atom',
          checkpoint: '0b2d80a74aa81b15f01f0bc45ddfc6443e8422f3ca346b8c60ae9d55c1a853bd'
  name 'StepMania'
  homepage 'http://www.stepmania.com/'

  app "StepMania-#{version}/Stepmania.app"
end
