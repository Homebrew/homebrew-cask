cask 'gpg-sync' do
  version '0.3.2.dev1'
  sha256 '90bac5b607585addbca6ff5c4eed094e32177c21788671794d3307be0fd5ddc3'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
