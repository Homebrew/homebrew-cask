cask 'pokertracker' do
  version '4.15.8'
  sha256 '5b4c46c48c693b87221d08efe61acfd54b22b5d4d0419328331e48738055c756'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "https://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
