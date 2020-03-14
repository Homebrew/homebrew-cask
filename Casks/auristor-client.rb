cask 'auristor-client' do
  version '0.192'

  if MacOS.version <= :el_capitan
    sha256 '55477dd0db061dd46e203cd81be5c13377a11005f142fe9d052702d1d4ea47fe'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version <= :sierra
    sha256 'b0769ccf920f8af37b6789fe977f1798d1861b2a57ca93a8f10fe3ffbb37ff5d'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  elsif MacOS.version <= :high_sierra
    sha256 'f87baa459cc7d66f22aa2064da5a175ab4559ccd1536a0fb46c5eea137202cdc'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 'f5addbf8e99304f00870ff3c42de08a1406b49321177c6c0f8aa59d671a399e6'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.14/Auristor-client-#{version}-Mojave.dmg"
  else
    sha256 'a399d4815bfda945ecbde924feef758ec20768fd252bf9f19fcc00f9174fcf86'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.15/Auristor-client-#{version}-Catalina.dmg"
  end

  name 'AuriStor File System Client'
  homepage 'https://www.auristor.com/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                      :catalina,
                    ]

  if MacOS.version <= :high_sierra
    pkg 'Auristor-Lite.pkg'
  elsif MacOS.version <= :mojave
    pkg 'Auristor-Lite.pkg'
  elsif MacOS.version <= :catalina
    pkg 'Auristor-Lite.pkg'
  else
    pkg 'Auristor.pkg'
  end

  uninstall pkgutil:   'com.auristor.yfs-*',
            launchctl: [
                         'com.auristor.XPCHelper',
                         'com.auristor.yfs-client',
                       ],
            kext:      'com.auristor.filesystems.yfs'
end
