cask 'ppduck' do
  version '3.2.5'
  sha256 '32a8d91b368f98b43c0e4d383fcefc50d3f670935611a4c9fff7fe76b8247c02'

  url "http://download.ppduck.com/PPDuck3_#{version}.dmg"
  name 'PPDuck3'
  homepage 'https://www.ppduck.com/'

  app 'PPDuck3.app'

  caveats 'PPDuck3 is an application that compresses image files. It supports .png .jpg and .gif'
end
