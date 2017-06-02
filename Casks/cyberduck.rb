cask 'cyberduck' do
  version '6.0.4.24953'
  sha256 '4c5256b8602c6c376e3e3824105c2af03318d190b39ce41177887bfcbf425253'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '403a8b237e708352f12e05a0698d45ad782a69d632d749a53bd59203900dc03e'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
