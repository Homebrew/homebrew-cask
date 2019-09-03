cask 'ppduck' do
  version '3.9.0'
  sha256 'a0876b253b560250975fb8decca6ca210cc358ae7d65e5168eee556dee49b7f5'

  url "http://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name 'PPDuck'
  homepage 'https://www.ppduck.com/'

  app "PPDuck#{version.major}.app"
end
