cask 'launchrocket' do
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  appcast 'https://github.com/jimbojsb/launchrocket/releases.atom',
          checkpoint: '4f61a6950fcf2a24574592c5fb09c1ccf061c54ed332fce58df7e90e56c00b6b'
  name 'LaunchRocket'
  homepage 'https://github.com/jimbojsb/launchrocket'

  prefpane 'LaunchRocket.prefPane'
end
