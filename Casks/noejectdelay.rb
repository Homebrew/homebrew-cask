cask 'noejectdelay' do
  version '7.1.4'
  sha256 '6a263c59efaaffb200db7d9ee6fe817f414e148053e610ccdcf37186fed27cc0'

  url "https://pqrs.org/osx/karabiner/files/NoEjectDelay-#{version}.dmg"
  appcast 'https://github.com/tekezo/NoEjectDelay/releases.atom',
          checkpoint: '8cf6b036077bd9db8bd105ec548f60866403c2986e760dcc6d0c8b5b99916710'
  name 'NoEjectDelay'
  homepage 'https://pqrs.org/osx/karabiner/noejectdelay.html.en'

  pkg 'NoEjectDelay.sparkle_guided.pkg'

  uninstall kext:    'org.pqrs.driver.NoEjectDelay',
            pkgutil: 'org.pqrs.driver.NoEjectDelay'
end
