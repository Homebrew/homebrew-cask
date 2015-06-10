cask :v1 => 'historyhound' do
  version '1.9.11'
  sha256 '125cda1a46a2757128a48d49ef8c755fa7ec8d13040875fe29d0133a4518d5ae'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          :sha256 => '2cd20bfdf558b83ee35ef23c879d1b321350cbb999489eb4b5cf5fba9c00a7bd'
  name 'HistoryHound'
  homepage 'http://www.stclairsoft.com/HistoryHound/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HistoryHound.app'
end
