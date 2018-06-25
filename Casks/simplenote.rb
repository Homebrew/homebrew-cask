cask 'simplenote' do
  version '1.1.6'
  sha256 'd3cbabdcbe63c668e4eed3e39a3c9da2609c6189a0b918a530e6624b9926755f'

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
