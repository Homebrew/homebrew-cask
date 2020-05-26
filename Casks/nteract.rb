cask 'nteract' do
  version '0.23.2'
  sha256 '154582eaa7f470519f4fbec8fb88f955c5060cb1291cdbc2d95be4fcbd13def0'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'

  uninstall delete: '/usr/local/bin/nteract'

  zap trash: [
               '~/Library/Application Support/Caches/nteract-updater',
               '~/Library/Application Support/nteract',
               '~/Library/Logs/nteract',
               '~/Library/Preferences/io.nteract.nteract.plist',
               '~/Library/Saved Application State/io.nteract.nteract.savedState',
             ]
end
