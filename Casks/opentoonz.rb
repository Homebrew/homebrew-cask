cask 'opentoonz' do
  version '1.2.0'
  sha256 '21d91a82284ffabc6d37362bcdd32f3c87fe362fc76d29661166b86925c048e4'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/e/index.html'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: 'io.github.opentoonz'
end
