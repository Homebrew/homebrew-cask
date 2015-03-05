cask :v1 => 'pokertracker' do
  version '4.12.1'
  sha256 'd549d431f0a792b723d0dba6121652eb565d484d358e29b082f138fa1657da28'

  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  homepage 'https://www.pokertracker.com'
  license :commercial

  app 'PokerTracker 4.app'
end
