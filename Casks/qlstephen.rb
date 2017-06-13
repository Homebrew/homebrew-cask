cask 'qlstephen' do
  version '1.4.4'
  sha256 'ef7323064fd5bff5c3e4b7fabe9ac832711535862cdf585f806e6962cd4a9119'

  # github.com/whomwah/qlstephen was verified as official when first introduced to the cask
  url "https://github.com/whomwah/qlstephen/releases/download/#{version}/QLStephen.qlgenerator.#{version}.zip"
  appcast 'https://github.com/whomwah/qlstephen/releases.atom',
          checkpoint: '3f5376b9e01281eeb64251fc47b115d774641ec44a623430f132e2718dc1a422'
  name 'QLStephen'
  homepage 'https://whomwah.github.io/qlstephen/'

  qlplugin 'QLStephen.qlgenerator'
end
