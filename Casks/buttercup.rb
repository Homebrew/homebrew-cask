cask 'buttercup' do
  version '0.24.0'
  sha256 'f6ae763bc0ece507b86f0bbde4f1931dad66adc311f04b72b49093422f602298'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '911f37e643e1b7c5fcbe2aac86ee762adffa14dbac500805cebd9034f263ebbf'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
