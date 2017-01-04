cask 'pb-for-desktop' do
  version '2.9.9'
  sha256 '8c8bb53a8fc8b77b3793c637e50a8384850a6f2e12c41edf6326d2d89b3fe0a1'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: '2fbcc4f7476af910d0a1cde9c8d95bf454168ec591c3cd1fc30ef41092eaeb1d'
  name 'PB for Desktop'
  homepage 'https://github.com/sidneys/pb-for-desktop'

  app 'PB for Desktop.app'

  zap delete: [
                '~/Library/Application Support/PB for Desktop',
                '~/Library/Caches/de.sidneys.pb-for-desktop',
                '~/Library/Logs/pb-for-desktop',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.plist',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist',
                '~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState',
              ]
end
