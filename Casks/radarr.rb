cask 'radarr' do
  version '0.2.0.1067'
  sha256 'bb0885cb03ad8b15811f1ff60439fafe45b699e51d47b6bc4c072242b18d2c78'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
