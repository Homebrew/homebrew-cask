cask 'auristor-client' do
  version '0.167'

  if MacOS.version == :mavericks
    sha256 '50a605891a5d8e5262f33bc050fcf437ed630c54c7f931ed0d4d6cf691224a9a'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '25072c42cb0e74b7d9f63e9248cad0851aa9566484f9f8f44a897b468e2f262a'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 '890ce742255b6c06be2bdedd93efc1de2f24ea1b25695b874399195236ab5f7f'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version == :sierra
    sha256 '3d9b1ddf4d2bcaad6a2fab9d35bc21a744ed08da5776b0579ed7e58a42264899'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  else
    sha256 '9faef2ded9a89b0dfc697b9abd721af940b8ba865ae1404473319ce6e7df84c6'
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
