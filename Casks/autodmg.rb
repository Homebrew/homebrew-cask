cask 'autodmg' do
  version '1.8.1'
  sha256 '17716f7e87ce803250e10f8b58dc450e45c82c78a3ee63da0941067f8fa0b2d2'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: 'ec2d86a5db77dee8f35e166f63c4a49c967ede31cf932b8797c343c2ff244360'
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
