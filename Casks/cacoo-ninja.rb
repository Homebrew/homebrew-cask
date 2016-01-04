cask 'cacoo-ninja' do
  version '1.2.0'
  sha256 'd536efe0d4d947b724a513d9874a8d47e13299c1f6c1767cb9f56c50e7e38ccb'

  url 'http://assets.cacoo.com/extension/151111/CacooNinjaInstaller.dmg'
  name 'Cacoo Ninja'
  homepage 'https://cacoo.com/extension'
  license :gratis

  depends_on :cask => 'adobe-air'

  installer :script => 'Install Cacoo Ninja.app/Contents/MacOS/Install Cacoo Ninja',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :script => {
                         :executable => Hbc::Container::Air::INSTALLER_PATHNAME,
                         :args       => %w[-uninstall -silent /Applications/Cacoo\ Ninja.app],
                       }
end
