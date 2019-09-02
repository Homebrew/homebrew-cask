cask 'gpg-sync' do
  version '0.3.4'
  sha256 '2f37e616442d36e72f9f06ec7a64dca196cb00e76f0ff2039bc3ed2058c5c9a1'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
