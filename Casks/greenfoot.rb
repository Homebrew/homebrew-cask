cask 'greenfoot' do
  version '3.5.0'
  sha256 'c35defb4fd831559edc420edac1b67e7dd60fe87d80c68f2ce3aa36f1dc65e4b'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
