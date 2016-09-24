cask 'livestreamer-twitch-gui' do
  version '0.15.2'
  sha256 'a7f650e72c05e4fb13a66184a2d46524aeea671b172ceba2db62efe63b5a09ae'

  url "https://github.com/bastimeyer/livestreamer-twitch-gui/releases/download/v#{version}/livestreamer-twitch-gui-v#{version}-osx64.tar.gz"
  appcast 'https://github.com/bastimeyer/livestreamer-twitch-gui/releases.atom',
          checkpoint: 'f22b92d8a4c51bac99ac09386bcfd4a763b5c68298987d30bf97455ec0572182'
  name 'Livestreamer Twitch GUI'
  homepage 'https://github.com/bastimeyer/livestreamer-twitch-gui'
  license :mit

  depends_on formula: 'livestreamer'
  depends_on cask: 'vlc'

  app 'Livestreamer Twitch GUI.app'
end
