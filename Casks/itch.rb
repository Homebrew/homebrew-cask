cask 'itch' do
  version '25.0.0'
  sha256 '06a579b135203dd5da5a6e7a0665e4495a2501cf0dbe11f52f8447f3ccd090ca'

  # nuts.itch.zone was verified as official when first introduced to the cask
  url 'http://nuts.itch.zone/download/osx'
  appcast 'https://github.com/itchio/itch/releases.atom'
  name 'itch'
  homepage 'https://itch.io/app'

  container nested: 'Install itch.dmg'

  installer script: 'Install itch.app/Contents/MacOS/itch-setup'

  preflight do
    set_permissions "#{staged_path}/Install itch.app", '0777'
  end

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
