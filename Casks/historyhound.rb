cask 'historyhound' do
  version '1.9.12'
  sha256 'f2bf9a68026868a0b2ed41516c42cc52323bdf7bfdbbe4c1d311b442a88b740c'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          checkpoint: '5ba20222c0ce71b65a16b25afbbdc5147f8d05105df8e25c269fc4d353620d15'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'

  app 'HistoryHound.app'
end
