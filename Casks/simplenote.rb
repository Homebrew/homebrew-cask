cask 'simplenote' do
  version '1.1.1'
  sha256 '135022c922dbbafe112ecdf3de7089618569ea1517ea373021f81f2b374b4b81'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.zip"
  appcast 'https://github.com/Automattic/simplenote-electron/releases.atom',
          checkpoint: '934f1480041814a09fabe1b4f8ee3fb6f5d835d31b4c12a4cb47bcae4de72586'
  name 'Simplenote'
  homepage 'https://github.com/Automattic/simplenote-electron'

  app 'Simplenote.app'

  zap trash: [
               '~/Library/Application Support/Simplenote',
               '~/Library/Caches/com.automattic.simplenote',
               '~/Library/Caches/com.automattic.simplenote.ShipIt',
               '~/Library/Saved Application State/com.automattic.simplenote.savedState',
             ]
end
