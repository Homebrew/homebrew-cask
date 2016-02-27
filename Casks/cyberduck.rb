cask 'cyberduck' do
  version '4.8.1.19040'
  sha256 '92e99e031368cead7ea99d7534b8f84be69ec50c8ff6a270115ffd3bf04adfd5'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'ba2908733c8bf7458fea0be0b40b8a959151d9fc5133c2f92bfae12a8e7ae36a'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
