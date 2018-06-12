cask 'simplenote' do
  version '1.1.3'
  sha256 '6152ad389f0296c2715b9d916b816a2dc108a897ce97b457cfa48ef4c1ccdc1c'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.zip"
  appcast 'https://github.com/Automattic/simplenote-electron/releases.atom'
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
