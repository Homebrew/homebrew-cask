cask 'radarr' do
  version '0.2.0.1217'
  sha256 '6fceb4e578263cae8e25dd8122c2a15351de8aa62c02f7ec01e654ada09a6837'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.v#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
