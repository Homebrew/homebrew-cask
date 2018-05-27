cask 'launchrocket' do
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  appcast 'https://github.com/jimbojsb/launchrocket/releases.atom',
          checkpoint: 'b09f8248332189d74db3d30b7fb9688043257d9fe2723e4d04ecc0b77efce390'
  name 'LaunchRocket'
  homepage 'https://github.com/jimbojsb/launchrocket'

  prefpane 'LaunchRocket.prefPane'
end
