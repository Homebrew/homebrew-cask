cask 'autodmg' do
  version '1.7.3'
  sha256 '73dac1837902cad7779d6fa64c8ebad4da808b00475c3ebd211505558ecb61d9'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: 'd81a5ea27380dc044e607407017bcc1c4c5f1b457ec9b8fba34862c4f6df99a1'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'

  zap delete: [
                '~/Library/Preferences/se.gu.it.AutoDMG.plist',
                '~/Library/Application Support/AutoDMG',
                '~/Library/Caches/se.gu.it.AutoDMG',
              ]
end
