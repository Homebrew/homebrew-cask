cask :v1 => 'sonarr-menu' do
  version '3.2'
  sha256 '04269ee43683f09ffe3d874d4867b11e8006ed5aa9fba8e3a01b8c52a4bd994d'

  url "https://github.com/jefbarn/Sonarr-Menu/releases/download/v#{version}/Sonarr-Menu.v#{version}.zip"
  appcast 'https://github.com/jefbarn/Sonarr-Menu/releases.atom'
  name 'Sonarr Menu'
  homepage 'https://github.com/jefbarn/Sonarr-Menu'
  license :gpl

  app 'Sonarr-Menu.app'

  uninstall :quit => 'tv.sonarr.Sonarr-Menu',
            :launchctl => 'tv.sonarr.Sonarr-Menu'

  depends_on :cask => 'sonarr'
  depends_on :macos => '>= :mavericks'
end
