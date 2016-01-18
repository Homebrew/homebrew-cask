cask 'historyhound' do
  version '1.9.11'
  sha256 '125cda1a46a2757128a48d49ef8c755fa7ec8d13040875fe29d0133a4518d5ae'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          checkpoint: '9eca11b0d4be87890ebb4a9bb49680959786890978187876469597a961415646'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'
  license :commercial

  app 'HistoryHound.app'
end
