cask 'seil' do
  if MacOS.release <= :mountain_lion
    version '10.11.0'
    sha256 '4ee777bf0a7f023abadb1f6a836b08484cfc2db2a19dd0b28d8942a2b638f8e5'
  elsif MacOS.release <= :yosemite
    version '11.3.0'
    sha256 '5fd57db4f96b833c4f1005b3d68711bb9ea52f0db8e98a0793eb2a9ff5d290b2'
  else
    version '12.0.0'
    sha256 'ebfcc6b8a709048cb4aa81fc7a020112f77282934c4b30aedae8448d6534d65d'
  end

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          checkpoint: 'b4f7cb8bd2068dc80c6e0c83ac3b446f0050f65f7cd32a250ecbca6c0eec9a9b'
  name 'Seil'
  homepage 'https://pqrs.org/osx/karabiner/seil.html'
  license :public_domain

  depends_on macos: '>= :mountain_lion'

  if MacOS.release <= :mountain_lion
    pkg 'Seil.pkg'
  else
    pkg 'Seil.sparkle_guided.pkg'
  end

  uninstall quit:    'org.pqrs.Seil',
            kext:    'org.pqrs.driver.Seil',
            pkgutil: 'org.pqrs.driver.Seil'

  zap       delete: [
                      '~/Library/Caches/org.pqrs.PCKeyboardHack',
                      '~/Library/Caches/org.pqrs.Seil',
                      '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                      '~/Library/Preferences/org.pqrs.Seil.plist',
                    ]
end
