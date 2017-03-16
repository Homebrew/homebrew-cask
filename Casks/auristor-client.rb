cask 'auristor-client' do
  version '0.149'

  if MacOS.version == :mavericks
    sha256 'e79579c9ac2cd609bedd2e01104c113a3417e082e6b5a9f8d333d74e8a6d5030'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '966c115c1d87f239fb63521940e4a4142cf17e096548e9aaed92912c91f7202b'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'b0a7eee25398e265304a7adfe672f8daa942b916ed7e069d45c3b871d023086f'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  else
    sha256 'a5b0cb5e14654e7e0558b779f3c5c32e03a691be10f3f88ea7857cebea2f66f1'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  end

  name 'AuriStor File System Client'
  homepage 'https://www.auristor.com/'

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
