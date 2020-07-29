cask 'simplenote' do
  version '1.18.0'
  sha256 'b1681a3b8370a6ac4c49b6fadf9a2d43db391e2048071beea581406be14306f4'

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
