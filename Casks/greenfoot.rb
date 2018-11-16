cask 'greenfoot' do
  version '3.5.2'
  sha256 'a94184dfd2e344bfabcb3bd561ec0a5126205575cd34f247c8ca2f2fba63a29b'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
