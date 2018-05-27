cask 'qlstephen' do
  version '1.4.4'
  sha256 'ef7323064fd5bff5c3e4b7fabe9ac832711535862cdf585f806e6962cd4a9119'

  # github.com/whomwah/qlstephen was verified as official when first introduced to the cask
  url "https://github.com/whomwah/qlstephen/releases/download/#{version}/QLStephen.qlgenerator.#{version}.zip"
  appcast 'https://github.com/whomwah/qlstephen/releases.atom',
          checkpoint: 'b2acb482282824efb102b8fcea3c91010e5fba31a01e01a86157866609ba888f'
  name 'QLStephen'
  homepage 'https://whomwah.github.io/qlstephen/'

  qlplugin 'QLStephen.qlgenerator'
end
