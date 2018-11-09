cask 'sandvox' do
  version :latest
  sha256 :no_check

  url 'https://www.karelia.com/files/8/Sandvox.dmg'
  appcast 'https://launch.karelia.com/appcast.php?product=8&appname=Sandvox&version=29583&type=release_deploy&os=10.13.4'
  name 'Sandvox'
  homepage 'https://www.karelia.com/products/sandvox/'

  app 'Sandvox.app'
end
