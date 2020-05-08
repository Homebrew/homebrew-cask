cask 'auristor-client' do
  version '0.194'

  if MacOS.version <= :sierra
    sha256 '909f53f46b1dcfe627fd421f3b91f0e62010b35891d4407100780a5c52cc1704'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  elsif MacOS.version <= :high_sierra
    sha256 'f0d2e9c4f94e9178e790174b24a6c0e4b9593cafd0d6191ef0321c69cc141c24'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 '47830671ce3b5cb7253b9554701ec81bf61d4b4153c2a882e86774868c5dbad9'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.14/Auristor-client-#{version}-Mojave.dmg"
  else
    sha256 '734da14030894e4f866f59f6aa4f4b7094aba3779956211b8699ec16ace3eab1'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.15/Auristor-client-#{version}-Catalina.dmg"
  end

  name 'AuriStor File System Client'
  homepage 'https://www.auristor.com/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
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
