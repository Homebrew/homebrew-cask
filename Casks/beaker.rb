cask 'beaker' do
  version '1.7.1-0-g6dac09a'
  sha256 '9fff2da8df616ce6e2a6bf8e8c4fff7aeeec0c875a197cb63558ae1a81f34035'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: '31c52c046703cf1719ff51b52b7f886834f46f7dfb17b3ee648c66786e978263'
  name 'Beaker'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
