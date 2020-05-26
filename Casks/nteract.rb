cask 'nteract' do
  version '0.23.3'
  sha256 '1794e751d11acbec4cbb951a3fc365d63b37983d3d03be98b3ecc1d2668db963'

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
