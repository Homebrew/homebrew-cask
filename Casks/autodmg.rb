cask 'autodmg' do
  version '1.7.3'
  sha256 '73dac1837902cad7779d6fa64c8ebad4da808b00475c3ebd211505558ecb61d9'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: 'c29303ee083b595d6cfd0f8b2635e0d83e89522a56382b3c6ea5d87a971cf5d5'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'

  zap delete: [
                '~/Library/Preferences/se.gu.it.AutoDMG.plist',
                '~/Library/Application Support/AutoDMG',
                '~/Library/Caches/se.gu.it.AutoDMG',
              ]
end
