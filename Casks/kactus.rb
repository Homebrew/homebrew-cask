cask 'kactus' do
  version '0.3.27'
  sha256 'd133ae539dfc63c991968f7d3c71bcca9dfb18d04d41b06bf85c0682d45722df'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
