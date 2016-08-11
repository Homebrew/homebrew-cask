cask 'livestreamer-twitch-gui' do
  version '0.14.2'
  sha256 '8f23cdea09c3ab5f54dfab2f34304dd1ee9af1174dd4f227c6bdaf0d3847ddb5'

  url "https://github.com/bastimeyer/livestreamer-twitch-gui/releases/download/v#{version}/livestreamer-twitch-gui-v#{version}-osx64.tar.gz"
  appcast 'https://github.com/bastimeyer/livestreamer-twitch-gui/releases.atom',
          checkpoint: '62fad10fd3c6c0fc19b9a7438314fd8950045a6ba3886e48819905cee12814be'
  name 'Livestreamer Twitch GUI'
  homepage 'https://github.com/bastimeyer/livestreamer-twitch-gui'
  license :mit

  app 'Livestreamer Twitch GUI.app'
end
