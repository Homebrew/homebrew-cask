cask :v1 => 'radiant-player' do
  version '1.3.3'
  sha256 '93fe48f191c5b670704266eec8c25040d153051397420ce36cdf669a322270cf'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  appcast 'https://github.com/kbhomes/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'http://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
