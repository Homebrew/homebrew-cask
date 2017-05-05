cask 'beaker' do
  version '1.7.1-0-g6dac09a'
  sha256 '9fff2da8df616ce6e2a6bf8e8c4fff7aeeec0c875a197cb63558ae1a81f34035'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: '20cb1eeeedc3c9719e974a74e2651c3c0ae46ad857f3ee6744321e2d4e503808'
  name 'Beaker'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
