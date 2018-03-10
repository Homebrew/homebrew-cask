cask 'buttercup' do
  version '1.4.0'
  sha256 'b08de949cd8487541fca955ecd58526e327b1132b3e7bf184ed8f606f529f57b'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'd00b142d19efa589a158a67ceceab6599fc6807160d88f8295fbde87e123caed'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
