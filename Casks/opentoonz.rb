cask 'opentoonz' do
  version '1.3.0'
  sha256 'cb82a0ee73504ee7d324bfb844ccdcc2cd4d0dc064c4c4023d41ca2af4d5c39d'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/e/index.html'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: 'io.github.opentoonz'
end
