cask 'folding-at-home' do
  version '7.6.13'
  sha256 'ee96f4f1b724db46f9a37f7d805095a16b24f1ef7e9b9a1615a56e94e4119a36'

  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast 'https://download.foldingathome.org/js/fah-downloads.js'
  name 'Folding@home'
  homepage 'https://foldingathome.org/'

  pkg "fah-installer_#{version}_x86_64.pkg"

  uninstall pkgutil:   'org.foldingathome.*',
            launchctl: 'org.foldingathome.fahclient',
            quit:      [
                         'org.foldingathome.fahviewer',
                         'org.foldingathome.fahcontrol',
                       ]
end
