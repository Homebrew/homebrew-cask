cask 'buttercup' do
  version '0.23.0'
  sha256 'd2213fadafb457ae6f16d3faa39a9059b93d2519477abc7037216d7981cc4018'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '6e7cf74a4f1e1515e5c2060c6956cd4912ab6cef83c94b51bc6c3b928c8b731e'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
