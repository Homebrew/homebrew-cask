cask 'pokertracker' do
  version '4.14.7'
  sha256 'e112d03806915ae737cc3c3ba035ec17149f742cf4e45946033af181e156de94'

  # s3-us1.ptrackupdate.com was verified as official when first introduced to the cask
  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com'
  license :commercial

  app "PokerTracker #{version.major}.app"
end
