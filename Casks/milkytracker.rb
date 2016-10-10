cask 'milkytracker' do
  version '0.90.86'
  sha256 '0029fe9a5e62d2b0db11fcbedb3c13997a4199259d1f36c55f966b0417d818b0'

  url "http://www.milkytracker.org/files/milkytracker-#{version}-osx_universal.zip"
  name 'MilkyTracker'
  homepage 'http://www.milkytracker.org/'

  app "milkytracker-#{version}-osx_universal/MilkyTracker.app"
end
