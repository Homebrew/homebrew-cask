cask 'pokertracker' do
  version '4.15.3'
  sha256 '9751eb70dfc0747692c4565c4604dc79c335e69fa558507b8d15f15f5d2f4dbd'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
