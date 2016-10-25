cask 'pb-for-desktop' do
  version '2.9.2'
  sha256 '324dab567f9bb5271db77fa7b262a8a2948176810bd3472955db0ef14d75e59e'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: '4984930827cd9e67b0aecde7c8e7ee9001daf9a2f9b5169f375dc4e2b221d585'
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
