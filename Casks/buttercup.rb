cask 'buttercup' do
  version '0.23.0'
  sha256 'd2213fadafb457ae6f16d3faa39a9059b93d2519477abc7037216d7981cc4018'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'e0f718fabadedc4b6ad8593a83dd5e90ec4e5a291cc2b15b96851ff6a402db41'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
