cask 'pokertracker' do
  version '4.15.6'
  sha256 'fb8e4b30446ecda0f6ff5f1674fe47062810fb0621b77ab398459247bd28e88e'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "https://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
