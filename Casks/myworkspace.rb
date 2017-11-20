cask 'myworkspace' do
  version :latest
  sha256 :no_check

  url 'https://myworkspace.ms/Assets/MyWorkspace.dmg'
  name 'My Workspace'
  homepage 'https://myworkspace.ms/'

  auto_updates true

  app 'MyWorkspace.app'

  uninstall quit: 'com.microsoft.MyWorkspace'

  zap trash: [
               '~/Library/Application Support/com.microsoft.MyWorkspace',
               '~/Library/Caches/com.microsoft.MyWorkspace',
               '~/Library/Preferences/com.microsoft.MyWorkspace.plist',
             ]
end
