cask 'clementine' do
  version '1.2.2'
  sha256 '7e3dac7fb184058e69afbf9cf68850debbbacdfbbd3023fbcdce7c159a2eed75'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          :sha256 => '0b5029726140e900aaf1f14442d397962db09f7c102d951955af4a779edfd5c7'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'
  license :gpl

  app 'clementine.app'

  zap :delete => '~/Library/Preferences/org.clementine-player.Clementine.plist'
end
