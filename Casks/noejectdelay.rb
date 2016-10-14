cask 'noejectdelay' do
  version '7.1.0'
  sha256 'cfaeed50aa7ed9eac04716ab0e34c5ef10658802e691732f7589f9454e96aa94'

  url "https://pqrs.org/osx/karabiner/files/NoEjectDelay-#{version}.dmg"
  name 'NoEjectDelay'
  homepage 'https://pqrs.org/osx/karabiner/noejectdelay.html.en'

  pkg 'NoEjectDelay.sparkle_guided.pkg'

  uninstall kext:    'org.pqrs.driver.NoEjectDelay',
            pkgutil: 'org.pqrs.driver.NoEjectDelay'
end
