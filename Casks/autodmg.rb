cask 'autodmg' do
  version '1.7.3'
  sha256 '73dac1837902cad7779d6fa64c8ebad4da808b00475c3ebd211505558ecb61d9'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: '231c2baf5086578fb698859a0304d47872ffc4ce916d3fe20f09b531e65bea2a'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'

  zap delete: [
                '~/Library/Caches/se.gu.it.AutoDMG',
                '~/Library/Logs/AutoDMG',
              ],
      trash:  [
                '~/Library/Application Support/AutoDMG',
                '~/Library/Preferences/se.gu.it.AutoDMG.plist',
              ]
end
