cask 'myworkspace' do
  version :latest
  sha256 :no_check

  url 'https://myworkspace.ms/Assets/MyWorkspace.dmg'
  name 'My Workspace'
  homepage 'https://myworkspace.ms/'

  auto_updates true

  app 'MyWorkspace.app'

  uninstall quit: 'com.microsoft.MyWorkspace'

  zap delete: '~/Library/Caches/com.microsoft.MyWorkspace',
      trash:  [
                '~/Library/Application Support/com.microsoft.MyWorkspace',
                '~/Library/Preferences/com.microsoft.MyWorkspace.plist',
              ]
end
