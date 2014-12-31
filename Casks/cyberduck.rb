cask :v1 => 'cyberduck' do
  version '4.6.1'
  sha256 'f6a18dd8e6422038ae0ccda7a8243c06824188b50dc6e1bfcd58bf345d6be4e9'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '1eeb448a209f9ba84690c15ecde08906e4b199b0ef8e99b4272f228744cda821'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
