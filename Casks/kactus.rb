cask 'kactus' do
  version '0.1.14'
  sha256 'cf5ba67e11e9a3ac7583dd5b90d1653d77149a4ec799aebaca3bdc1def12309f'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '23743bc8f8c0791b844e0d19868222628e96584c30fc1ac7a2afe2c4b220c419'
  name 'Kactus'
  homepage 'http://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
