cask 'pokertracker' do
  version '4.15.11'
  sha256 '5ef4a68869a6be1be2780d3e167101e86739a6a0b82450acaea93a0ea7acedca'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "https://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
