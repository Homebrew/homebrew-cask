cask 'nteract' do
  version '0.24.0'
  sha256 'd8bbe3f906b95b13a2679ebfa54e1361077b92fd32a7fe4f8dba5547790831a8'

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
