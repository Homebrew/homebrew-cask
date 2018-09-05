cask 'auristor-client' do
  version '0.170'

  if MacOS.version == :mavericks
    sha256 'cab27067e65c1ae467333f1fc4840faf7d8887a907f1d2723a91344181fcdf9d'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.9/AuriStor-client-#{version}-Mavericks.dmg"
  elsif MacOS.version == :yosemite
    sha256 '6f47a61ba2184cc1a83284807ef685626ba4f480a7ad6d52e9a07cf50596e93c'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.10/AuriStor-client-#{version}-Yosemite.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'ce04a065f9609660cc06fdefc044ff7585888d4ca54bd943c786bca8ff04fc1c'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.11/AuriStor-client-#{version}-ElCapitan.dmg"
  elsif MacOS.version == :sierra
    sha256 '3acb856ba898e01ad2352aa5c01de229806713bf51f7a3a5ef6d68e2ab87712c'
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.12/AuriStor-client-#{version}-Sierra.dmg"
  else
    sha256 '6f9bcffeee74b38e9737f65ba7435fbddf7b41259cbf441637b0ea21d9916e85'
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
