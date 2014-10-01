class Launchrocket < Cask
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  homepage 'https://github.com/jimbojsb/launchrocket'
  license :oss

  prefpane 'LaunchRocket.prefPane'
end
