cask 'sonarr-menu' do
  version '3.3'
  sha256 '627c7df205e0914209a39c17f6a05756a37c5c96232f4dfc3e198219aa05762d'

  url "https://github.com/jefbarn/Sonarr-Menu/releases/download/v#{version}/Sonarr-Menu.v#{version}.zip"
  appcast 'https://github.com/jefbarn/Sonarr-Menu/releases.atom',
          checkpoint: '93dc65ea1cc2ad37687a301e3f236e3e1e5a835d203de618d04f1dddb68637ab'
  name 'Sonarr Menu'
  homepage 'https://github.com/jefbarn/Sonarr-Menu/'

  depends_on cask: 'sonarr'
  depends_on macos: '>= :mavericks'

  app 'Sonarr-Menu.app'

  uninstall quit:      'tv.sonarr.Sonarr-Menu',
            launchctl: 'tv.sonarr.Sonarr-Menu'
end
