cask 'noejectdelay' do
  version '7.1.0'
  sha256 'cfaeed50aa7ed9eac04716ab0e34c5ef10658802e691732f7589f9454e96aa94'

  url "https://pqrs.org/osx/karabiner/files/NoEjectDelay-#{version}.dmg"
  appcast 'https://github.com/tekezo/NoEjectDelay/releases.atom',
          checkpoint: '4475b83ad5927875fbc16e19c890dbaba1e466a758afcc0351ec86bb0e00468d'
  name 'NoEjectDelay'
  homepage 'https://pqrs.org/osx/karabiner/noejectdelay.html.en'

  pkg 'NoEjectDelay.sparkle_guided.pkg'

  uninstall kext:    'org.pqrs.driver.NoEjectDelay',
            pkgutil: 'org.pqrs.driver.NoEjectDelay'
end
