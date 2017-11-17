cask 'buttercup' do
  version '0.24.1'
  sha256 '2870196537f542eb6aab94b8b6d2c436451af724fc75076664434b0865b104ef'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '393d6466a7a3c8456b818f2b8053d3c296f1d020a91d7f0b7ad62f9783619182'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
