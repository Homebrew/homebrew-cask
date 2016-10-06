cask 'auristor-openafs-client' do
  if MacOS.version == :mavericks
    version '0.117'
    sha256 'e5a043bc4c96af437f91eaa636daf9356b3e7bf4c2721fb46b0f98f59e893e40'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    version '0.117'
    sha256 'f153396cb4b2dfd731e4a20d7d68170d1b9c15b47fd562328236493e8d7714ec'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    version '0.117'
    sha256 '9dcb5e795d0aa031d83353df9c8736f6e8cadd4d7dbd81f15f3bfce927c7d2d0'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  else
    version '0.121'
    sha256 'c3f2094568e6591512ee17bda84cb363f9325a93bc181e39e95987f4e51c3483'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  end

  name 'AuriStor File System OpenAFS Client'
  homepage 'https://www.auristor.com'
  license :other

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                    ]

  pkg 'Auristor-Lite.pkg'

  uninstall pkgutil:      'com.auristor.yfs-*',
            early_script: 'Extras/Uninstall-OpenAFS.command',
            script:       'Extras/Uninstall.command'
end
