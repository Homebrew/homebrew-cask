cask 'simplenote' do
  version '1.15.1'
  sha256 'a713ab999117b35912462b8efc9332f01412e4b9c92414f0662f0b9b9b926259'

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
