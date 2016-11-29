cask 'launchrocket' do
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  appcast 'https://github.com/jimbojsb/launchrocket/releases.atom',
          checkpoint: '43d4921c43c512fb24d966f1811be784503dbe7244c498eab38ef5cdb5a30223'
  name 'LaunchRocket'
  homepage 'https://github.com/jimbojsb/launchrocket'

  prefpane 'LaunchRocket.prefPane'
end
