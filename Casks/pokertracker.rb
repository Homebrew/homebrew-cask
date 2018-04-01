cask 'pokertracker' do
  version '4.14.25'
  sha256 'd788ff1bc28a83b9c22ff4b2c10e92849aab4c0fc1e1171043030101a5dc6897'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
