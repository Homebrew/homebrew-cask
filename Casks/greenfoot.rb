cask 'greenfoot' do
  version '3.1.0'
  sha256 'c4f46c190538503890ac59871ba870a7837b6605dbd268ccf90aeb0ec435ef5e'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
