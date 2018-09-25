cask 'autodmg' do
  version '1.9'
  sha256 '92c10590ef5569797f1879f3b123e0a1f5a0434654a9cc6f6dbb517e779e6a79'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'

  zap trash: [
               '~/Library/Application Support/AutoDMG',
               '~/Library/Caches/se.gu.it.AutoDMG',
               '~/Library/Logs/AutoDMG',
               '~/Library/Preferences/se.gu.it.AutoDMG.plist',
             ]
end
