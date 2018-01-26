cask 'autodmg' do
  version '1.8'
  sha256 '595c32f269b613739ef7db49b04c3fa7aa830594545e5393811fb42bbc49a8da'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: 'c4e649d69f24ca008a9d5f7e22b695af1c1d1762ed6fceaaf8f87620f6673151'
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
