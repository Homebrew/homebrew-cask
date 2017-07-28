cask 'cyberduck' do
  version '6.2.0.25806'
  sha256 'bcbf1d385f2cd54e33a364f3999011e70c42fa06d176beb0cbd9424cafd8313e'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '2518244c8f93892b43c4e43e861c3f919382b719c3fc1c3ba7b29c7b9b89ad3d'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
