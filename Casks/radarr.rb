cask 'radarr' do
  version '0.2.0.995'
  sha256 '28119d8e5e32e8039278c094a22d33a30c98c48239dc79643532d5b0b7e444ef'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: '1220385ac520d66ebab3c7c83f7d42fc892df41ca4a901df437f223ba1ed9583'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
