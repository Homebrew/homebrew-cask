cask 'itch' do
  version :latest
  sha256 :no_check

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
