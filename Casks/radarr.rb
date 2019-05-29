cask 'radarr' do
  version '0.2.0.1344'
  sha256 '99fb8a44f5712ce910c87c0e0a4290980edbf5584bdfc62d24ece748a4965456'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
