cask 'simplenote' do
  version '1.1.2'
  sha256 '59092b964afdb8ba6bd335f8b0cb05a4bba3c87282d06c7d46394cf87d031342'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.zip"
  appcast 'https://github.com/Automattic/simplenote-electron/releases.atom',
          checkpoint: '6f8a954c631476a564c6093524636fefc8fd71bc1ae97d135922aef05c5bbd1c'
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
