cask 'simplenote' do
  version '1.1.7'
  sha256 '0be66fe9eed95548f3b855ec0e8ebdfd01c82db7c270c7db7547b6c37bed97a0'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote.app.#{version}.zip"
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
