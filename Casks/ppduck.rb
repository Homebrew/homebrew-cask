cask 'ppduck' do
  version '3.2.5'
  sha256 '32a8d91b368f98b43c0e4d383fcefc50d3f670935611a4c9fff7fe76b8247c02'

  url "http://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name 'PPDuck'
  homepage 'https://www.ppduck.com/'

  app "PPDuck#{version.major}.app"
end
