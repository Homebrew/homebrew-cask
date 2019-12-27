cask 'radarr' do
  version '0.2.0.1450'
  sha256 '6891cd4e087c2c49fdf1ddc0fcb07c6ecc2f8267b18f32e804117333248a3acc'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
