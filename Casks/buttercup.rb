cask 'buttercup' do
  version '1.3.0'
  sha256 'fb3b707afe1dd2883601cba20331e1e6b57456eb859307c40892271bafb30018'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '25595bf9644035944a933ee23df8503fc0e44710e6836d3f8a8d3f5f5360a777'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
