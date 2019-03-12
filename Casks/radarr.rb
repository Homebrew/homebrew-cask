cask 'radarr' do
  version '0.2.0.1293'
  sha256 '8795a181a575b82c4a0ced7b9325495c58fe2a88740cd758c9122bb9b3fffac2'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
