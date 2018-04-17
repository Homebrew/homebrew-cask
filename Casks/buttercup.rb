cask 'buttercup' do
  version '1.6.1'
  sha256 '0ce076efe304f1d68f31906b428bb80a72b0a2c04572890c312fe8c605eb4d3a'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'b09503f840f848bdb171bb131ff30550d490b7ed535f47ef08361ec0e70a5f31'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
