cask 'itch' do
  version '25.4.0'
  sha256 'b88dc10ceb69ece6ecab17340e6c4abc6e89e8eb20c7b030207eca5d0c2d8f17'

  # nuts.itch.zone was verified as official when first introduced to the cask
  url 'https://nuts.itch.zone/download/osx'
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
