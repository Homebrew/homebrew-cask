cask 'noejectdelay' do
  version '7.1.0'
  sha256 'cfaeed50aa7ed9eac04716ab0e34c5ef10658802e691732f7589f9454e96aa94'

  url "https://pqrs.org/osx/karabiner/files/NoEjectDelay-#{version}.dmg"
  appcast 'https://github.com/tekezo/NoEjectDelay/releases.atom',
          checkpoint: '8cf6b036077bd9db8bd105ec548f60866403c2986e760dcc6d0c8b5b99916710'
  name 'NoEjectDelay'
  homepage 'https://pqrs.org/osx/karabiner/noejectdelay.html'

  depends_on macos: '<= :el_capitan'

  pkg 'NoEjectDelay.sparkle_guided.pkg'

  uninstall kext:    'org.pqrs.driver.NoEjectDelay',
            pkgutil: 'org.pqrs.driver.NoEjectDelay'

  caveats do
    discontinued
  end
end
