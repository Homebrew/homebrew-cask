cask 'cyberduck' do
  version '4.7.3'
  sha256 '38ad2ed10ecba59bf27489b9ef0e5338d8066e3f1c27d0445d414f92d9e84f93'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :checkpoint => '455c213d5900475b33247d70038ed20cf5cdf525ba485603462e64e70c3ffd4c'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                   '~/Library/Application Support/Cyberduck',
                   '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
