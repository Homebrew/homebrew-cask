cask :v1 => 'cacoo-ninja' do
  version '1.1.0'
  sha256 'a19eb5a97a854a8d15157f0d51d18ff5f84876f262c921d239a1bb0bb1328d1c'

  url 'http://assets.cacoo.com/extension/140819/CacooNinjaInstaller.dmg'
  name 'Cacoo Ninja'
  homepage 'https://cacoo.com/extension'
  license :gratis

  installer :script => 'Install Cacoo Ninja.app/Contents/MacOS/Install Cacoo Ninja',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :script => { :executable => 'Install Cacoo Ninja.app/Contents/MacOS/Install Cacoo Ninja' }

  depends_on :cask => 'adobe-air'
end
