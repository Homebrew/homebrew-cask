cask 'greenfoot' do
  version '3.0.4'
  sha256 'a664db64db0b6edbbcd0b760482fbecfc055334dad3b161fa3a15be19b6089c0'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
