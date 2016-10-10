cask 'fromscratch' do
  version '1.1.1'
  sha256 'eb39b0ba128fe9352ceb4d2cb2701a4cd7ef772083ad97ce7de62a2f14bdad02'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-darwin-x64-#{version}.zip"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom',
          checkpoint: 'bc6fd4aea1849757ce946f7daaeaf22a1f47c838346af321cdb877e9b256f47e'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
