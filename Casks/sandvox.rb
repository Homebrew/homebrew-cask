cask 'sandvox' do
  version '2.10.12'
  sha256 '06fcaf1f26a67b19e87148118fe720422ef37148a6103fe7dda09cf944dd6dfb'

  url 'https://www.karelia.com/files/8/Sandvox.dmg'
  appcast 'https://launch.karelia.com/appcast.php?product=8&appname=Sandvox&version=29583&type=release_deploy&os=10.13.4'
  name 'Sandvox'
  homepage 'https://www.karelia.com/products/sandvox/'

  app 'Sandvox.app'
end
