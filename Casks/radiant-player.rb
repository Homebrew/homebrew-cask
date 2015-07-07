cask :v1 => 'radiant-player' do
  version '1.4.0'
  sha256 '8811c634dbd4f0719ea76b91adf65b20c086f3e8aa72d2921a17858ea809e6c0'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  appcast 'https://github.com/kbhomes/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'https://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
