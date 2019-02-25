cask 'gpg-sync' do
  version '0.3.1'
  sha256 '0c6478da3f5d8c0f3b1e52aa8bd48bd21bcedebe89da583cfdb3a749c7301d43'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
