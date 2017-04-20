cask 'pokertracker' do
  version '4.14.24'
  sha256 '6ee042c28475b475f622e5d2593bf204ced6eba0a3491302b5fd421d2e06b469'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
