cask :v1 => 'historyhound' do
  version '1.9.11'
  sha256 '125cda1a46a2757128a48d49ef8c755fa7ec8d13040875fe29d0133a4518d5ae'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          :sha256 => '22beb79fed4fa0f4a46c8970654ecc649eb4609fc2664b3458cde51b86470930'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HistoryHound.app'
end
