cask 'radarr' do
  version '0.2.0.852'
  sha256 'f00282767fbc64b6e0d337f3a20662097c8c042ca52a4e1d32367895cbde3e5e'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: '1b7185786f9e53aabd71c71bdac3ace0b5ca7220ee6b7364cd5484a5f7eb3f5a'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
