cask 'seil' do
  if MacOS.version <= :mountain_lion
    version '10.11.0'
    sha256 '4ee777bf0a7f023abadb1f6a836b08484cfc2db2a19dd0b28d8942a2b638f8e5'
  elsif MacOS.version <= :yosemite
    version '11.3.0'
    sha256 '5fd57db4f96b833c4f1005b3d68711bb9ea52f0db8e98a0793eb2a9ff5d290b2'
  else
    version '12.1.0'
    sha256 'fddd1883d8cb28084c66fa284d1b58f0f4717022d1b794d1fded8219f1d9c85f'
  end

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          checkpoint: 'bf1be761638c151d1780c80db40ecb489899e055f4fdd3ddfa56b8f5692c3912'
  name 'Seil'
  homepage 'https://pqrs.org/osx/karabiner/seil.html'

  depends_on macos: '<= :el_capitan'

  if MacOS.version <= :mountain_lion
    pkg 'Seil.pkg'
  else
    pkg 'Seil.sparkle_guided.pkg'
  end

  uninstall quit:    'org.pqrs.Seil',
            kext:    'org.pqrs.driver.Seil',
            pkgutil: 'org.pqrs.driver.Seil'

  zap delete: [
                '~/Library/Caches/org.pqrs.PCKeyboardHack',
                '~/Library/Caches/org.pqrs.Seil',
                '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                '~/Library/Preferences/org.pqrs.Seil.plist',
              ]

  caveats do
    discontinued
  end
end
