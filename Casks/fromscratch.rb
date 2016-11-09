cask 'fromscratch' do
  version '1.2.0'
  sha256 'b9d69e6e29f9569b3c96d3343d5f4f082d70846d6e0a166625b21b3263f64222'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-darwin-x64-#{version}.zip"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom',
          checkpoint: 'c6ce7f224a03ae7f7a9891b25cb2f247465602f77edcd770984d0834f6757595'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
