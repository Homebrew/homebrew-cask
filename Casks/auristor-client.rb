cask 'auristor-client' do
  version '0.162'

  if MacOS.version == :mavericks
    sha256 'cd147e18b2fd7e03530ce4ac8d08a802329e811bbcc6ca49c54a032552961d88'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '416124a68e9c925cb73d5ae253ba9c2affa952a8ea19e793378323693872359b'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'ec5e76c06d8a1342dfb41173cac303999fbfa31779acdcb9e0d472d22688cf17'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version == :sierra
    sha256 '6577b6fa6c723dd703132650215aec0a1c300b832afe4b6525cb989407eb530a'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  else
    sha256 'b01815f0b3c4eb60bc0c19e17fa45da20fba7670cd156ca5f76a2b0260883690'
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

  uninstall pkgutil:      'com.auristor.yfs-*',
            early_script: 'Extras/Uninstall-OpenAFS.command',
            script:       'Extras/Uninstall.command'
end
