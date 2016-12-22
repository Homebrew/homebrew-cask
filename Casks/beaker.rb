cask 'beaker' do
  version '1.7.1-0-g6dac09a'
  sha256 '9fff2da8df616ce6e2a6bf8e8c4fff7aeeec0c875a197cb63558ae1a81f34035'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  appcast 'https://github.com/twosigma/beaker-notebook/releases.atom',
          checkpoint: 'aae840a5dd88e2e8f246c62d4310809d2b7c93fedeffbe55175106175e4c01c6'
  name 'Beaker'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
