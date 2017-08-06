cask 'kactus' do
  version '0.2.1'
  sha256 '864d981f70dc8ccd03c8e95227905a0407562734ad9790838079c751e4d6a877'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: 'ce6902d4aade77ed5f22683313d826806107317becc80a48c27ca7aa46c800cc'
  name 'Kactus'
  homepage 'http://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
