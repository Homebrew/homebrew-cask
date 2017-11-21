cask 'simplenote' do
  version '1.1.0'
  sha256 '053e48f1fedea2bc38643c26a8d95e27191f56dbb69a8945c781deba63819b72'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.zip"
  appcast 'https://github.com/Automattic/simplenote-electron/releases.atom',
          checkpoint: 'fbd69511b4c38ef247aa5f9c443d59495758900c907de13af1c9ad98e8d7ef55'
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
