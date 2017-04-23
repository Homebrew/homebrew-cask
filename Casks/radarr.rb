cask 'radarr' do
  version '0.2.0.654'
  sha256 'c0aa3875ee49383e06b34abcfb86b5d1bce746970e0a20dd396d5a6c076b77d4'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: 'd86e5406dd44ed06fee747cf5d3c8468023befbd7ba9e8fe15874a355ea0f624'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
