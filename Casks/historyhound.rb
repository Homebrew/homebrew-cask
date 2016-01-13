cask 'historyhound' do
  version '1.9.11'
  sha256 '125cda1a46a2757128a48d49ef8c755fa7ec8d13040875fe29d0133a4518d5ae'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          :checkpoint => '016b4e98d2cc4e79be76ebcb2174e3818f3ef9b8f91e366d2d00c8b2c7127131'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'
  license :commercial

  app 'HistoryHound.app'
end
