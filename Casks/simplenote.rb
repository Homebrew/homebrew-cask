cask 'simplenote' do
  version '1.12.0'
  sha256 'd170a9ec5d906108e1441a00b1dd213d5c4c48c3ab81d9b0b574c990d74a697d'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.dmg"
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
