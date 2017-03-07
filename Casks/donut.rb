cask 'donut' do
  version '2.2.1'
  sha256 '4ebfe99d10caf485f237ad9051a88579af582f2ebb223d39e53bd8f96d592e59'

  # github.com/harshjv/donut was verified as official when first introduced to the cask
  url "https://github.com/harshjv/donut/releases/download/v#{version}/donut-#{version}.dmg"
  appcast 'https://github.com/harshjv/donut/releases.atom',
          checkpoint: 'df886d7dde40b5ffa62c4d23df8514e2d4ed5b70b79acdd59f9cf36ed6752772'
  name 'donut'
  homepage 'https://harshjv.github.io/donut/'

  app 'donut.app'
end
