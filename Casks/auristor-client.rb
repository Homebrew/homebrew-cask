cask 'auristor-client' do
  version '0.195'

  if MacOS.version <= :sierra
    sha256 '909f53f46b1dcfe627fd421f3b91f0e62010b35891d4407100780a5c52cc1704'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  elsif MacOS.version <= :high_sierra
    sha256 'dee691a8b1e8712ebe9dfaa912b84cb5918e7b9810227cfcfbbc20d1a2bde6c1'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 '9b0ff041d5158ab63b95e2520a01c81a9e6535f06955ff1e0c18a0b635b4f553'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.14/Auristor-client-#{version}-Mojave.dmg"
  else
    sha256 'f24a450376bbfe9d6994c34a4bd8fe05af3c5522d93b01a8930d808d88dc5ca1'
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
