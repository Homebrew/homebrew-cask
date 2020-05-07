cask 'nteract' do
  version '0.23.1'
  sha256 'a9e6f4cf655d8afc192c7566b187d0a754715b2e1445eb4eb23be1e5370529c6'

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
