cask 'gpg-sync' do
  version '0.3.3'
  sha256 '9c6c865f0482a92f51873e440eede33bbe6ec72596cbf490ba99b6cf4511a989'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
