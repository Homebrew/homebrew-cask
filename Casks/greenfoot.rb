cask 'greenfoot' do
  version '3.5.4'
  sha256 'bb6f2942f6fc6b056917714d63fc1b4d9853a38f85e2296ab529bea45dd4f878'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
