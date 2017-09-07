cask 'autodmg' do
  version '1.7.3'
  sha256 '73dac1837902cad7779d6fa64c8ebad4da808b00475c3ebd211505558ecb61d9'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: 'd68422cdd4d6e69d0dad795ae3a90b09b25bc65180cc818d97a95b290eef6f86'
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
