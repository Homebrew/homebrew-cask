cask 'pokertracker' do
  version '4.14.23'
  sha256 '3273d1eeef990e4141b69fee577deee303eafd019b8e4f9bf45843a29a8299ea'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
