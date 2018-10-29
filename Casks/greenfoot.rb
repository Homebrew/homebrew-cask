cask 'greenfoot' do
  version '3.5.1'
  sha256 'e89a05e59635329b2e94d72354f78afa307c406e35604c65fda3bb48ab84b0dc'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
