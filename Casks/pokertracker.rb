cask 'pokertracker' do
  version '4.14.21'
  sha256 'ad6bafd9c0d05ad3e14fe98ccfa2f88b11c300fd84bf4d85f02b29fb02acce2c'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com/'

  app "PokerTracker #{version.major}.app"
end
