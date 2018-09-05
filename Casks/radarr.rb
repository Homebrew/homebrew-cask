cask 'radarr' do
  version '0.2.0.1120'
  sha256 'dad152e1e345654e3a4c6ffb03a451987d7353070635bd17dfc312c4cea3460a'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
