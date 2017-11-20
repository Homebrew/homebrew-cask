cask 'simplenote' do
  version '1.0.8'
  sha256 '7bdc8d27b8936e53e1f2b9319d5a685ac85363db6fca5e566529ad36a22e5813'

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.zip"
  appcast 'https://github.com/Automattic/simplenote-electron/releases.atom',
          checkpoint: 'c64f7c766c1225fd0eb4443ab72bd6656abe7e0f2028c514219a073ba7b7c3e4'
  name 'Simplenote'
  homepage 'https://github.com/Automattic/simplenote-electron'

  app 'Simplenote-darwin-x64/Simplenote.app'

  zap trash: [
               '~/Library/Application Support/Simplenote',
               '~/Library/Caches/com.automattic.simplenote',
               '~/Library/Caches/com.automattic.simplenote.ShipIt',
               '~/Library/Saved Application State/com.automattic.simplenote.savedState',
             ]
end
