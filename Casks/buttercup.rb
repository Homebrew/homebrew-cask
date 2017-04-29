cask 'buttercup' do
  version '0.12.4'
  sha256 'eb736d455a948471990acb62afaf91da870c9a0487f5d5019f08b8e42480295c'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '846ff5fe9b28aa03281214e30cb579f548eee1d23b96ea6231c70d396a0e6de1'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
