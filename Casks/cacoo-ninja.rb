cask :v1 => 'cacoo-ninja' do
  version '1.2.0'
  sha256 'd536efe0d4d947b724a513d9874a8d47e13299c1f6c1767cb9f56c50e7e38ccb'

  url 'http://assets.cacoo.com/extension/151111/CacooNinjaInstaller.dmg'
  name 'Cacoo Ninja'
  homepage 'https://cacoo.com/extension'
  license :gratis

  installer :script => 'Install Cacoo Ninja.app/Contents/MacOS/Install Cacoo Ninja',
            :sudo   => true

  uninstall :script => { :executable => 'Install Cacoo Ninja.app/Contents/MacOS/Install Cacoo Ninja' }

  depends_on :cask => 'adobe-air'
end
