cask 'itch' do
  version '1.17.0'
  sha256 '9053778cbae81ce09129364e0b3ec7f2b9abdd9705334011398d2d66d553c31c'

  # broth.itch.ovh/ was verified as official when first introduced to the cask
  url "https://broth.itch.ovh/itch-setup/darwin-amd64/#{version}/archive/default"
  appcast 'https://github.com/itchio/itch/releases.atom'
  name 'itch.io'
  homepage 'https://itch.io/app'

  installer script: 'itch-setup'

  uninstall delete: [
                      '~/Applications/itch.app',
                      '~/Library/Application Support/itch-setup/',
                    ],
            quit:   'io.itch.mac'

  zap trash: [
               '~/Library/Application Support/itch/',
               '~/Library/Preferences/io.itch.mac.helper.plist',
               '~/Library/Preferences/io.itch.mac.plist',
             ]
end
