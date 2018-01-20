cask 'auristor-client' do
  version '0.164'

  if MacOS.version == :mavericks
    sha256 '195fac51615abe4239c10c6ca3fa48dd07019f278f6087514cf890884c8feacc'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '45b47e801da08ffeb6e59153b1b23af8ee3abade08e3fcea05d3da3a13fe833b'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 '6f38ca1b5dcb45385dd46d8d641a49de1072076290e41835d52bb5951930453b'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version == :sierra
    sha256 '3ed2a84989b21c2f8bdfc925f8031a233ff1be44a7117a08e15f38859764b589'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  else
    sha256 '108c30e88576bb512782a5996f4d8393de3163f71e63dcbab6198dca98b76ebd'
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
                       ]

  caveats do
    kext
  end
end
