cask 'opentoonz' do
  version '1.2.0'
  sha256 '21d91a82284ffabc6d37362bcdd32f3c87fe362fc76d29661166b86925c048e4'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: 'e3b5c1effd3febd03fa35c1c23ae93ec59c0775649b88a80b203259c8d22fa59'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: 'io.github.opentoonz'
end
