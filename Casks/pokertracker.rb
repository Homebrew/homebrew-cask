cask :v1 => 'pokertracker' do
  version '4.14'
  sha256 'ee1b016904e49dad594605a33814a5cde7dd35e9de866297955f02597103e8ac'

  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com'
  license :commercial

  app 'PokerTracker 4.app'
end
