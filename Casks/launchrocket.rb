cask 'launchrocket' do
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  appcast 'https://github.com/jimbojsb/launchrocket/releases.atom',
          checkpoint: 'f188364a9d817e1b0287d98a9966450735f0b29fc55ec7da05950391988e89cc'
  name 'LaunchRocket'
  homepage 'https://github.com/jimbojsb/launchrocket'
  license :mit

  prefpane 'LaunchRocket.prefPane'
end
