cask 'myworkspace' do
  version :latest
  sha256 :no_check

  url 'https://myworkspace.ms/Assets/MyWorkspace.dmg'
  name 'My Workspace'
  homepage 'https://myworkspace.ms/'

  app 'MyWorkspace.app'
end
