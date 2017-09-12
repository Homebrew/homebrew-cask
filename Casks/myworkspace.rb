cask 'myworkspace' do
  version :latest
  sha256 :no_check

  # myworkspace.ms/Assets/MyWorkspace was verified as official when first introduced to the cask
  url 'https://myworkspace.ms/Assets/MyWorkspace.dmg/'
  name 'My Workspace'
  homepage 'https://myworkspace.ms/'

  app: 'MyWorkspace.app'

  zap delete: [
    '~/Library/Caches/com.microsoft.MyWorkspace',
    '~/Library/Preferences/com.microsoft.MyWorkspace.plist',
  ]
end
