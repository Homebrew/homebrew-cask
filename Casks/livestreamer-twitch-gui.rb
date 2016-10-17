cask 'livestreamer-twitch-gui' do
  version '0.16.0'
  sha256 '4f2dbcd05956e58e2202004d59e0d44f4617e8ac6cef5f5efe06bf2d34389e89'

  url "https://github.com/bastimeyer/livestreamer-twitch-gui/releases/download/v#{version}/livestreamer-twitch-gui-v#{version}-osx64.tar.gz"
  appcast 'https://github.com/bastimeyer/livestreamer-twitch-gui/releases.atom',
          checkpoint: '6830ef0dc1ab45d1a559511afa0439f672d62eefbb4e2711084cc110d7c4850b'
  name 'Livestreamer Twitch GUI'
  homepage 'https://github.com/bastimeyer/livestreamer-twitch-gui'

  depends_on formula: 'livestreamer'
  depends_on cask: 'vlc'

  app 'Livestreamer Twitch GUI.app'
end
