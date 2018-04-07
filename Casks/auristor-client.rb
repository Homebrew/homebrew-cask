cask 'auristor-client' do
  version '0.168'

  if MacOS.version == :mavericks
    sha256 'b921aa93872a3f5dadcb8abbb94bc1ebbf97db44d64e96c5ab5880be54da2205'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '4f44569cecf28b9e318c17a5801f2691ca78f5ee6c9665bc505ae28177b74547'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'a1d74ebab1ea9199afbc5675398c04ca877dc6eeb6ae71a808601023955dfa5e'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version == :sierra
    sha256 '243ac6bc632c0070d5ffdfb93c49c8609b2842aac6d98b9d2bc562f01b70ed36'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  else
    sha256 '37f79fae30eb28a85d7da8983bfd036654000be1560356321c893fb8c6a91c66'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  end

  name 'AuriStor File System Client'
  homepage 'https://www.auristor.com/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  pkg 'Auristor-Lite.pkg'

  uninstall pkgutil:   'com.auristor.yfs-*',
            launchctl: [
                         'com.auristor.XPCHelper',
                         'com.auristor.yfs-client',
                       ],
            kext:      'com.auristor.filesystems.yfs'
end
