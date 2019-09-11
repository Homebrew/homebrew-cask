cask 'radarr' do
  version '0.2.0.1358'
  sha256 '0cf9d05c8e971e834a591fef60f1a6f3e685a2999751cb118a537c118d5f5466'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
