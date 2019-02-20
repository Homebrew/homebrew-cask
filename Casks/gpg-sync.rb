cask 'gpg-sync' do
  version '0.3'
  sha256 'dc8973b2f28240ec9627651219941a544608729da18f7f0777b3a91adb5c4c1d'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
