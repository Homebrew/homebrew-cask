cask 'auristor-client' do
  version '0.192'

  if MacOS.version <= :el_capitan
    sha256 'e813336062adf2d40acfb1c268498e074ec5f3d514e93efe53afd1368a3e0aee'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version <= :sierra
    sha256 '2062e2a601202ff55af57b3f59ca28abb489060e7abfa8545cf3e8e56bb40166'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  elsif MacOS.version <= :high_sierra
    sha256 '4233f8a82a03b73d09a2048ae1acd82a87367a6f0e20209e64f7e9a0e7b3bab2'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 '38fe71d60379c09954631994f52286fab0d601b9ee561c21757a56e3c29d90f3'
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
