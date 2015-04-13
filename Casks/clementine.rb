cask :v1 => 'clementine' do
  version '1.2.2'
  sha256 '7e3dac7fb184058e69afbf9cf68850debbbacdfbbd3023fbcdce7c159a2eed75'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom'
  name 'Clementine'
  homepage 'http://www.clementine-player.org/'
  license :gpl

  app 'clementine.app'

  zap :delete => '~/Library/Preferences/org.clementine-player.Clementine.plist'
end
