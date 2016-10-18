cask 'pokertracker' do
  version '4.14.18'
  sha256 'ed890dcd4556102ba8ff65c336e636fab2aa5400372f2f6830a810684784cab6'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com'

  app "PokerTracker #{version.major}.app"
end
